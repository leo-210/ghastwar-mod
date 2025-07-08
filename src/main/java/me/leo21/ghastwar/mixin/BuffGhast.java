package me.leo21.ghastwar.mixin;

import net.minecraft.entity.attribute.EntityAttributes;
import net.minecraft.entity.passive.HappyGhastEntity;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.item.ItemStack;
import net.minecraft.item.Items;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.sound.SoundEvents;
import net.minecraft.text.Text;
import net.minecraft.util.ActionResult;
import net.minecraft.util.Hand;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

import java.util.Objects;

@Mixin(HappyGhastEntity.class)
public class BuffGhast {
    @Inject(at = @At("HEAD"), method = "interactMob", cancellable = true)
    public void interactMob(PlayerEntity player, Hand hand, CallbackInfoReturnable<ActionResult> cir) {
        ItemStack itemStack = player.getStackInHand(hand);
        if (!itemStack.isEmpty() && itemStack.isOf(Items.DIAMOND)) {
            var t = (HappyGhastEntity)(Object)this;

            if (!player.isTeammate(t)) {
                ((ServerPlayerEntity)player).sendMessage(
                        Text.empty().append(t.getStyledDisplayName()).append(" ne veut pas de vos diamands !")
                );
                cir.setReturnValue(ActionResult.FAIL);
                return;
            }

            var maxHealth = t.getMaxHealth();

            if (maxHealth >= 200) {
                ((ServerPlayerEntity)player).sendMessage(
                        Text.empty().append(t.getStyledDisplayName()).append(Text.of(" n'a plus faim !")));

                t.playSound(SoundEvents.ENTITY_HAPPY_GHAST_HARNESS_GOGGLES_DOWN);
                cir.setReturnValue(ActionResult.FAIL);
                return;
            }

            itemStack.decrement(1);
            Objects.requireNonNull(t.getAttributeInstance(EntityAttributes.MAX_HEALTH)).setBaseValue(t.getMaxHealth() + 2);

            t.playSound(SoundEvents.ENTITY_PLAYER_BURP);

            cir.setReturnValue(ActionResult.CONSUME);
        }
    }
}

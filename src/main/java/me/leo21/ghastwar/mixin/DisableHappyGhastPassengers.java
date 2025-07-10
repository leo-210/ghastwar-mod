package me.leo21.ghastwar.mixin;

import net.minecraft.entity.Entity;
import net.minecraft.entity.effect.StatusEffects;
import net.minecraft.entity.passive.HappyGhastEntity;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.text.Style;
import net.minecraft.text.Text;
import net.minecraft.util.Formatting;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

import java.util.Objects;

@Mixin(HappyGhastEntity.class)
public abstract class DisableHappyGhastPassengers {
    @Inject(at = @At("HEAD"), method = "canAddPassenger", cancellable = true)
    protected void canAddPassenger(Entity passenger, CallbackInfoReturnable<Boolean> cir) {
        if (!(passenger instanceof ServerPlayerEntity) ) {
            cir.setReturnValue(false);
            return;
        }

        var t = (HappyGhastEntity)(Object)this;

        if (!passenger.isTeammate(t) && passenger instanceof ServerPlayerEntity) {
            ((ServerPlayerEntity) passenger).sendMessage(
                    Text.empty().append(t.getStyledDisplayName()).append(" ne veux pas que vous montiez à bord.")
            );
            cir.setReturnValue(false);
            return;
        }

        var se = ((ServerPlayerEntity) passenger).getStatusEffect(StatusEffects.WATER_BREATHING);

        if (se != null && se.getAmplifier() == 2) {
            var d = se.getDuration() / (Objects.requireNonNull(passenger.getServer())
                    .getTickManager().getTickRate());
            ((ServerPlayerEntity) passenger).sendMessage(
                    Text.of("Vous ne pouvez pas monter sur votre ghast pour " + d + " secondes.")
                            .copy().setStyle(Style.EMPTY.withColor(Formatting.RED))
            );
            cir.setReturnValue(false);
            return;
        }

        cir.setReturnValue(passenger.isTeammate(t) && t.getPassengerList().size() < 4);
    }
}

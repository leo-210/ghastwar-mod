package me.leo21.ghastwar.mixin;

import net.minecraft.entity.Entity;
import net.minecraft.entity.passive.HappyGhastEntity;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.text.Text;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

@Mixin(HappyGhastEntity.class)
public abstract class DisableOtherTeamsPassengers {
    @Inject(at = @At("HEAD"), method = "canAddPassenger", cancellable = true)
    protected void canAddPassenger(Entity passenger, CallbackInfoReturnable<Boolean> cir) {
        var t = (HappyGhastEntity)(Object)this;

        if (!passenger.isTeammate(t) && passenger instanceof ServerPlayerEntity) {
            ((ServerPlayerEntity) passenger).sendMessage(
                    Text.empty().append(t.getStyledDisplayName()).append(" ne veux pas que vous montiez à bord.")
            );
        }

        cir.setReturnValue(passenger.isTeammate(t) && t.getPassengerList().size() < 4);
    }
}

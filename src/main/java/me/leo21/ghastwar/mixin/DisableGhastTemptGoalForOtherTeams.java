package me.leo21.ghastwar.mixin;

import net.minecraft.entity.EntityType;
import net.minecraft.entity.LivingEntity;
import net.minecraft.entity.ai.goal.TemptGoal;
import net.minecraft.entity.mob.MobEntity;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;


@Mixin(TemptGoal.class)
public abstract class DisableGhastTemptGoalForOtherTeams {
    @Shadow @Final
    protected MobEntity mob;

    @Inject(at = @At("HEAD"), method = "isTemptedBy", cancellable = true)
    protected void isTemptedBy(LivingEntity entity, CallbackInfoReturnable<Boolean> cir) {
        if (mob.getType() != EntityType.HAPPY_GHAST) {
            return;
        }

        if (!entity.isTeammate(mob)) {
            cir.setReturnValue(false);
        }
    }
}


package me.leo21.ghastwar.mixin;

import net.minecraft.entity.passive.HappyGhastEntity;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(HappyGhastEntity.class)
public abstract class DisableGhastRegen {
    @Inject(at = @At("HEAD"), method = "tickRegeneration", cancellable = true)
    private void tickRegeneration(CallbackInfo ci) {
        var t = (HappyGhastEntity) (Object) this;
        if (t.age % 600 == 0) {
            t.heal(1.0F);
        }

        ci.cancel();
    }
}

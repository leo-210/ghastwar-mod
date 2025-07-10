package me.leo21.ghastwar.mixin;

import net.minecraft.server.PlayerManager;
import net.minecraft.text.Text;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(PlayerManager.class)
public class DisableSomeJoinLeaveMessages {
    @Inject(at = @At("HEAD"), method = "broadcast(Lnet/minecraft/text/Text;Z)V", cancellable = true)
    public void broadcast(Text message, boolean overlay, CallbackInfo ci) {
        if (message.getString().toLowerCase().startsWith("cargo") &&
                (message.getString().endsWith("joined the game") || message.getString().endsWith("left the game"))) {
            ci.cancel();
        }
    }
}

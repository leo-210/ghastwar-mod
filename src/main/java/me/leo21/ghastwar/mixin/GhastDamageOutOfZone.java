package me.leo21.ghastwar.mixin;

import me.leo21.ghastwar.GhastWar;
import net.minecraft.entity.passive.HappyGhastEntity;
import net.minecraft.text.Style;
import net.minecraft.text.Text;
import net.minecraft.util.Formatting;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

import java.util.Objects;

@Mixin(HappyGhastEntity.class)
public class GhastDamageOutOfZone {
    private int sendBorderMsgCounter = 0;
    private int sendHeightMsgCounter = 0;

    @Inject(at =  @At("HEAD"), method = "tick")
    private void tick(CallbackInfo ci) {
        var t = (HappyGhastEntity) (Object) this;

        if (t.getScoreboardTeam() == null) {
            return;
        }

        var pos = t.getPos();
        if (!t.getWorld().getWorldBorder().contains(pos)) {
            if (sendBorderMsgCounter % 5 == 0) {
                t.damage(Objects.requireNonNull(t.getServer()).getWorld(t.getWorld().getRegistryKey()), t.getWorld().getDamageSources().outOfWorld(), 1);
            }
            if (sendBorderMsgCounter % 100 == 0) {
                GhastWar.sendTeamMsg(
                        Text.empty()
                                .append(t.getStyledDisplayName())
                                .append(" se sent exclu.e (en dehors de la zone de jeu) et prend des dégâts !")
                                .setStyle(Style.EMPTY.withColor(Formatting.RED)),
                        t.getScoreboardTeam(),
                        Objects.requireNonNull(t.getServer())
                );
            }
            sendBorderMsgCounter = (sendBorderMsgCounter + 1) % 100;
        } else {
            sendBorderMsgCounter = 0;
        }
        if (pos.getY() > 200) {
            if (sendHeightMsgCounter % 5 == 0) {
                t.damage(Objects.requireNonNull(t.getServer()).getWorld(t.getWorld().getRegistryKey()), t.getWorld().getDamageSources().outOfWorld(), 1);
            }
            if (sendHeightMsgCounter % 100 == 0) {
                GhastWar.sendTeamMsg(
                        Text.empty()
                                .append(t.getStyledDisplayName())
                                .append(" a le vertige (plus de 200 blocs de haut) et prend des dégâts !")
                                .setStyle(Style.EMPTY.withColor(Formatting.RED)),
                        t.getScoreboardTeam(),
                        Objects.requireNonNull(t.getServer())
                );
            }
            sendHeightMsgCounter =  (sendHeightMsgCounter + 1) % 100;
        } else {
            sendHeightMsgCounter = 0;
        }

    }
}

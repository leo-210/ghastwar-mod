package me.leo21.ghastwar;

import net.fabricmc.api.ModInitializer;

import net.minecraft.scoreboard.Team;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.network.ServerPlayerEntity;
import net.minecraft.text.Text;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

public class GhastWar implements ModInitializer {
	public static final String MOD_ID = "ghastwar";

	// This logger is used to write text to the console and the log file.
	// It is considered best practice to use your mod id as the logger's name.
	// That way, it's clear which mod wrote info, warnings, and errors.
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);

	@Override
	public void onInitialize() {
		// This code runs as soon as Minecraft is in a mod-load-ready state.
		// However, some things (like resources) may still be uninitialized.
		// Proceed with mild caution.

		LOGGER.info("Hello Fabric world!");
	}

	public static void sendTeamMsg(Text msg, Team team, MinecraftServer server) {
		List<ServerPlayerEntity> list = server
				.getPlayerManager()
				.getPlayerList()
				.stream()
				.filter(player -> player.getScoreboardTeam() == team)
				.toList();

		for (ServerPlayerEntity player : list) {
			player.sendMessage(msg);
		}
	}
}
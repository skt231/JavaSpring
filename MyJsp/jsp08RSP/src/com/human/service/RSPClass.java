package com.human.service;

public class RSPClass {
	public static final String versus = null;

	public static String versus(String user, String com) {
		switch (user) {
		case "rock":
			if (com.equals("rock")) {
				return "무승부입니다.";
			} else if (com.equals("scissors")) {
				return "user님이 승리하셨습니다.";
			} else if (com.equals("paper")) {
				return "com님이 승리하셨습니다.";
			}
			break;
		case "scissors":
			if (com.equals("rock")) {
				return "com님이 승리하셨습니다.";
			} else if (com.equals("scissors")) {
				return "무승부입니다.";
			} else if (com.equals("paper")) {
				return "user님이 승리하셨습니다.";
			}
			break;
		case "paper":
			if (com.equals("rock")) {
				return "user님이 승리하셨습니다.";
			} else if (com.equals("scissors")) {
				return "com님이 승리하셨습니다.";
			} else if (com.equals("paper")) {
				return "무승부입니다.";
			}
			break;
		}
		return "";

	}
}

package com.helpkitchen.controller;

import com.helpkitchen.controller.action.Action;
import com.helpkitchen.controller.action.board.BoardDeleteAction;
import com.helpkitchen.controller.action.board.BoardSearchAction;
import com.helpkitchen.controller.action.board.BoardUpdateAction;
import com.helpkitchen.controller.action.board.BoardUpdateFormAction;
import com.helpkitchen.controller.action.board.BoardViewAction;
import com.helpkitchen.controller.action.board.BoardWriteAction;
import com.helpkitchen.controller.action.board.BoardWriteFormAction;
import com.helpkitchen.controller.action.member.MemberEditPasswordAction;
import com.helpkitchen.controller.action.member.MemberEditPasswordFormAction;
import com.helpkitchen.controller.action.member.MemberFindPassAction;
import com.helpkitchen.controller.action.member.MemberFindPassFormAction;
import com.helpkitchen.controller.action.member.MemberJoinAction;
import com.helpkitchen.controller.action.member.MemberJoinFormAction;
import com.helpkitchen.controller.action.member.MemberLoginAction;
import com.helpkitchen.controller.action.member.MemberLoginFormAction;
import com.helpkitchen.controller.action.member.MemberLogoutAction;
import com.helpkitchen.controller.action.member.MemberPolicyFormAction;
import com.helpkitchen.controller.action.help.HelpKitchenCategoriesAction;
import com.helpkitchen.controller.action.help.HelpKitchenMainAction;
import com.helpkitchen.controller.action.help.HelpKitchenRankingAction;
import com.helpkitchen.controller.action.help.HelpKitchenTagAction;

public class ActionFactory {

	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		if (command.equals("help_main")) {
			action = new HelpKitchenMainAction();
		} else if (command.equals("help_categories")) {
			action = new HelpKitchenCategoriesAction();
		} else if (command.equals("help_Ranking")) {
			action = new HelpKitchenRankingAction();
		} else if (command.equals("member_login_form")) {
			action = new MemberLoginFormAction();
		} else if (command.equals("member_login")) {
			action = new MemberLoginAction();
		} else if (command.equals("member_join_form")) {
			action = new MemberJoinFormAction();
		} else if (command.equals("member_join")) {
			action = new MemberJoinAction();
		} else if (command.equals("member_policy_form")) {
			action = new MemberPolicyFormAction();
		} else if (command.equals("member_find_password_form")) {
			action = new MemberFindPassFormAction();
		} else if (command.equals("member_find_password")) {
			action = new MemberFindPassAction();
		} else if (command.equals("member_logout")) {
			action = new MemberLogoutAction();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if (command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if (command.equals("board_view")) {
			action = new BoardViewAction();
		} else if (command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if (command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if (command.equals("board_delete")) {
			action = new BoardDeleteAction();
		} else if (command.equals("member_edit_password")) {
			action = new MemberEditPasswordAction();
		} else if (command.equals("member_edit_password_form")) {
			action = new MemberEditPasswordFormAction();
		} else if (command.equals("board_search")) {
			action = new BoardSearchAction();
		} else if (command.equals("board_tag")) {
			action = new HelpKitchenTagAction();
		}
		return action;
	}
}
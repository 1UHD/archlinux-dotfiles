//@ pragma UseQApplication

import Quickshell

import "topbar" as TopBar
import "leftbar" as LeftBar
import "bottombar" as BottomBar
import "rightbar" as RightBar

Scope {
	id: root

	TopBar.Bar {}
	LeftBar.Bar {}
	BottomBar.Bar {}
	RightBar.Bar {}
}
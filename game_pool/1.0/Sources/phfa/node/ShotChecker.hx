package phfa.node;

@:keep class ShotChecker extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetProperty_007 = new armory.logicnode.SetPropertyNode(this);
		var _Sequence_006 = new armory.logicnode.SequenceNode(this);
		var _OnEvent = new armory.logicnode.OnEventNode(this);
		_OnEvent.property0 = "CheckShot";
		_OnEvent.addOutputs([_Sequence_006]);
		_Sequence_006.addInput(_OnEvent, 0);
		_Sequence_006.addOutputs([_SetProperty_007]);
		var _Branch_011 = new armory.logicnode.BranchNode(this);
		_Branch_011.addInput(_Sequence_006, 1);
		var _GetProperty_010 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_010.addInput(new armory.logicnode.ObjectNode(this, "Black"), 0);
		_GetProperty_010.addInput(new armory.logicnode.StringNode(this, "OnPocket"), 0);
		var _Branch_004 = new armory.logicnode.BranchNode(this);
		var _Gate_003 = new armory.logicnode.GateNode(this);
		_Gate_003.property0 = "Equal";
		_Gate_003.property1 = 9.999999747378752e-05;
		_Gate_003.addInput(_Branch_011, 1);
		var _GetProperty_001 = new armory.logicnode.GetPropertyNode(this);
		var _Self = new armory.logicnode.SelfNode(this);
		var _GetProperty_002 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_002.addInput(_Self, 0);
		_GetProperty_002.addInput(new armory.logicnode.StringNode(this, "SolidOnPocket"), 0);
		var _Branch_001 = new armory.logicnode.BranchNode(this);
		var _Gate_014 = new armory.logicnode.GateNode(this);
		_Gate_014.property0 = "Equal";
		_Gate_014.property1 = 9.999999747378752e-05;
		var _Gate_001 = new armory.logicnode.GateNode(this);
		_Gate_001.property0 = "Equal";
		_Gate_001.property1 = 9.999999747378752e-05;
		var _Gate = new armory.logicnode.GateNode(this);
		_Gate.property0 = "Equal";
		_Gate.property1 = 9.999999747378752e-05;
		var _Branch = new armory.logicnode.BranchNode(this);
		_Branch.addInput(_Branch_004, 1);
		var _GetProperty_009 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_009.addInput(_Self, 0);
		_GetProperty_009.addInput(new armory.logicnode.StringNode(this, "OnPocket"), 0);
		var _Branch_008 = new armory.logicnode.BranchNode(this);
		_Branch_008.addInput(_Gate_003, 1);
		_Branch_008.addInput(_GetProperty_009, 0);
		var _Merge_016 = new armory.logicnode.MergeNode(this);
		_Merge_016.addInput(_Branch, 0);
		_Merge_016.addInput(_Branch_008, 0);
		var _Sequence_002 = new armory.logicnode.SequenceNode(this);
		_Sequence_002.addInput(_Merge_016, 0);
		var _Merge_006 = new armory.logicnode.MergeNode(this);
		var _Sequence_001 = new armory.logicnode.SequenceNode(this);
		var _Merge_004 = new armory.logicnode.MergeNode(this);
		var _Branch_003 = new armory.logicnode.BranchNode(this);
		_Branch_003.addInput(_Branch_001, 1);
		var _GetProperty_003 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_003.addInput(_Self, 0);
		_GetProperty_003.addInput(new armory.logicnode.StringNode(this, "StripedOnPocket"), 0);
		var _Branch_002 = new armory.logicnode.BranchNode(this);
		_Branch_002.addInput(_Branch_001, 0);
		_Branch_002.addInput(_GetProperty_003, 0);
		var _Merge_001 = new armory.logicnode.MergeNode(this);
		_Merge_001.addInput(_Branch_002, 0);
		var _Branch_005 = new armory.logicnode.BranchNode(this);
		var _Gate_007 = new armory.logicnode.GateNode(this);
		_Gate_007.property0 = "Equal";
		_Gate_007.property1 = 9.999999747378752e-05;
		var _Merge_017 = new armory.logicnode.MergeNode(this);
		var _Gate_015 = new armory.logicnode.GateNode(this);
		_Gate_015.property0 = "Equal";
		_Gate_015.property1 = 9.999999747378752e-05;
		var _Merge_018 = new armory.logicnode.MergeNode(this);
		var _Branch_014 = new armory.logicnode.BranchNode(this);
		var _Gate_018 = new armory.logicnode.GateNode(this);
		_Gate_018.property0 = "Equal";
		_Gate_018.property1 = 9.999999747378752e-05;
		var _Branch_007 = new armory.logicnode.BranchNode(this);
		_Branch_007.addInput(_Branch_008, 1);
		_Branch_007.addInput(_GetProperty_010, 0);
		_Branch_007.addOutputs([new armory.logicnode.NullNode(this)]);
		_Branch_007.addOutputs([_Gate_018]);
		_Gate_018.addInput(_Branch_007, 1);
		_Gate_018.addInput(_GetProperty_001, 0);
		var _GetProperty_004 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_004.addInput(_Self, 0);
		_GetProperty_004.addInput(new armory.logicnode.StringNode(this, "Solids"), 0);
		var _Gate_016 = new armory.logicnode.GateNode(this);
		_Gate_016.property0 = "Greater Equal";
		_Gate_016.property1 = 9.999999747378752e-05;
		var _Sequence_004 = new armory.logicnode.SequenceNode(this);
		var _Sequence_003 = new armory.logicnode.SequenceNode(this);
		var _Merge_005 = new armory.logicnode.MergeNode(this);
		_Merge_005.addInput(_Merge_001, 0);
		_Merge_005.addInput(_Sequence_001, 1);
		var _Sequence = new armory.logicnode.SequenceNode(this);
		var _Merge = new armory.logicnode.MergeNode(this);
		_Merge.addInput(_Gate, 0);
		_Merge.addInput(_Gate_001, 0);
		_Merge.addInput(_Gate_014, 0);
		_Merge.addInput(_Gate_015, 1);
		var _Gate_006 = new armory.logicnode.GateNode(this);
		_Gate_006.property0 = "Equal";
		_Gate_006.property1 = 9.999999747378752e-05;
		var _Merge_019 = new armory.logicnode.MergeNode(this);
		_Merge_019.addInput(_Branch_014, 1);
		var _Branch_013 = new armory.logicnode.BranchNode(this);
		_Branch_013.addInput(_Gate_018, 1);
		var _GetProperty_014 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_014.addInput(_Self, 0);
		_GetProperty_014.addInput(new armory.logicnode.StringNode(this, "StripedsCleaned"), 0);
		var _Branch_012 = new armory.logicnode.BranchNode(this);
		var _Gate_011 = new armory.logicnode.GateNode(this);
		_Gate_011.property0 = "Equal";
		_Gate_011.property1 = 9.999999747378752e-05;
		var _Branch_009 = new armory.logicnode.BranchNode(this);
		var _Gate_009 = new armory.logicnode.GateNode(this);
		_Gate_009.property0 = "Equal";
		_Gate_009.property1 = 9.999999747378752e-05;
		_Gate_009.addInput(_Branch_011, 0);
		var _GetProperty_006 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_006.addInput(_Self, 0);
		_GetProperty_006.addInput(new armory.logicnode.StringNode(this, "FirstContact"), 0);
		_GetProperty_006.addOutputs([_Gate, _Gate_001, _Gate_014, _Gate_006, _Gate_009, _Gate_015]);
		_GetProperty_006.addOutputs([new armory.logicnode.StringNode(this, "")]);
		_Gate_009.addInput(_GetProperty_006, 0);
		var _String_002 = new armory.logicnode.StringNode(this);
		_String_002.addInput(new armory.logicnode.StringNode(this, "Black"), 0);
		_String_002.addOutputs([_Gate_001, _Gate_009, _Gate_015]);
		_Gate_009.addInput(_String_002, 0);
		_Gate_009.addOutputs([_Branch_009]);
		var _Merge_002 = new armory.logicnode.MergeNode(this);
		_Merge_002.addInput(_Gate_009, 1);
		_Merge_002.addInput(_Branch_009, 0);
		var _Branch_010 = new armory.logicnode.BranchNode(this);
		_Branch_010.addInput(_Gate_011, 0);
		var _GetProperty_013 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_013.addInput(_Self, 0);
		_GetProperty_013.addInput(new armory.logicnode.StringNode(this, "SolidsCleaned"), 0);
		_GetProperty_013.addOutputs([_Branch_010, _Branch_014]);
		var _SetProperty_011 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_011.addInput(_Gate_016, 0);
		_SetProperty_011.addInput(_Self, 0);
		_SetProperty_011.addInput(_GetProperty_013, 1);
		var _Boolean = new armory.logicnode.BooleanNode(this);
		_Boolean.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		var _SetProperty_010 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_010.addInput(_Sequence, 1);
		_SetProperty_010.addInput(new armory.logicnode.ObjectNode(this, "Rearm"), 0);
		_SetProperty_010.addInput(new armory.logicnode.StringNode(this, "Rearmable"), 0);
		_SetProperty_010.addInput(_Boolean, 0);
		_SetProperty_010.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetProperty_012 = new armory.logicnode.SetPropertyNode(this);
		var _Gate_017 = new armory.logicnode.GateNode(this);
		_Gate_017.property0 = "Greater Equal";
		_Gate_017.property1 = 9.999999747378752e-05;
		_Gate_017.addInput(_Sequence_004, 1);
		var _GetProperty_005 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_005.addInput(_Self, 0);
		_GetProperty_005.addInput(new armory.logicnode.StringNode(this, "Stripeds"), 0);
		var _CanvasSetText_008 = new armory.logicnode.CanvasSetTextNode(this);
		var _Sequence_005 = new armory.logicnode.SequenceNode(this);
		_Sequence_005.addInput(_Sequence_003, 0);
		var _CanvasSetText_007 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_007.addInput(_Sequence_005, 0);
		_CanvasSetText_007.addInput(_GetProperty_004, 1);
		_CanvasSetText_007.addInput(_GetProperty_004, 0);
		_CanvasSetText_007.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_005.addOutputs([_CanvasSetText_007]);
		_Sequence_005.addOutputs([_CanvasSetText_008]);
		_CanvasSetText_008.addInput(_Sequence_005, 1);
		_CanvasSetText_008.addInput(_GetProperty_005, 1);
		_CanvasSetText_008.addInput(_GetProperty_005, 0);
		_CanvasSetText_008.addOutputs([new armory.logicnode.NullNode(this)]);
		_GetProperty_005.addOutputs([_Gate_017, _CanvasSetText_008]);
		var _SetProperty_001 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_001.addInput(_Branch_003, 0);
		_SetProperty_001.addInput(_Self, 0);
		_SetProperty_001.addInput(_GetProperty_001, 1);
		_SetProperty_001.addInput(_GetProperty_005, 1);
		var _Gate_019 = new armory.logicnode.GateNode(this);
		_Gate_019.property0 = "Equal";
		_Gate_019.property1 = 9.999999747378752e-05;
		_Gate_019.addInput(_SetProperty_001, 0);
		var _GetProperty = new armory.logicnode.GetPropertyNode(this);
		_GetProperty.addInput(_Self, 0);
		_GetProperty.addInput(new armory.logicnode.StringNode(this, "CurrentPlayer"), 0);
		var _GetProperty_011 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_011.addInput(_Self, 0);
		_GetProperty_011.addInput(_GetProperty, 0);
		var _CanvasSetText = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText.addInput(_Sequence_003, 2);
		_CanvasSetText.addInput(_GetProperty_001, 1);
		_CanvasSetText.addInput(_GetProperty_011, 0);
		_CanvasSetText.addOutputs([new armory.logicnode.NullNode(this)]);
		_GetProperty_011.addOutputs([_SetProperty_007, _CanvasSetText]);
		_GetProperty_011.addOutputs([new armory.logicnode.StringNode(this, "")]);
		var _Gate_008 = new armory.logicnode.GateNode(this);
		_Gate_008.property0 = "Equal";
		_Gate_008.property1 = 9.999999747378752e-05;
		_Gate_008.addInput(_Merge_006, 0);
		_Gate_008.addInput(_GetProperty, 0);
		var _GetProperty_007 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_007.addInput(_Self, 0);
		_GetProperty_007.addInput(new armory.logicnode.StringNode(this, "Player 1"), 0);
		_GetProperty_007.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetProperty_003 = new armory.logicnode.SetPropertyNode(this);
		var _Merge_014 = new armory.logicnode.MergeNode(this);
		var _Gate_010 = new armory.logicnode.GateNode(this);
		_Gate_010.property0 = "Equal";
		_Gate_010.property1 = 9.999999747378752e-05;
		var _SetProperty = new armory.logicnode.SetPropertyNode(this);
		_SetProperty.addInput(_Branch_002, 1);
		_SetProperty.addInput(_Self, 0);
		_SetProperty.addInput(_GetProperty_001, 1);
		_SetProperty.addInput(_GetProperty_004, 1);
		_SetProperty.addOutputs([_Gate_010]);
		_Gate_010.addInput(_SetProperty, 0);
		_Gate_010.addInput(_GetProperty, 0);
		_Gate_010.addInput(_GetProperty_007, 1);
		var _Merge_003 = new armory.logicnode.MergeNode(this);
		_Merge_003.addInput(_Gate_019, 1);
		_Merge_003.addInput(_Gate_010, 0);
		var _SetProperty_005 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_005.addInput(_Merge_003, 0);
		_SetProperty_005.addInput(_Self, 0);
		var _GetProperty_008 = new armory.logicnode.GetPropertyNode(this);
		_GetProperty_008.addInput(_Self, 0);
		_GetProperty_008.addInput(new armory.logicnode.StringNode(this, "Player 2"), 0);
		_GetProperty_008.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetProperty_006 = new armory.logicnode.SetPropertyNode(this);
		var _Merge_013 = new armory.logicnode.MergeNode(this);
		_Merge_013.addInput(_Gate_010, 1);
		_Merge_013.addInput(_Gate_019, 0);
		_Merge_013.addOutputs([_SetProperty_006]);
		_SetProperty_006.addInput(_Merge_013, 0);
		_SetProperty_006.addInput(_Self, 0);
		_SetProperty_006.addInput(_GetProperty_008, 1);
		_SetProperty_006.addInput(_GetProperty_004, 1);
		_SetProperty_006.addOutputs([_Merge_001]);
		var _SetProperty_008 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_008.addInput(_Gate_008, 0);
		_SetProperty_008.addInput(_Self, 0);
		_SetProperty_008.addInput(_GetProperty, 1);
		_SetProperty_008.addInput(_GetProperty_008, 1);
		var _Merge_011 = new armory.logicnode.MergeNode(this);
		_Merge_011.addInput(_SetProperty_008, 0);
		var _SetProperty_009 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_009.addInput(_Gate_008, 1);
		_SetProperty_009.addInput(_Self, 0);
		_SetProperty_009.addInput(_GetProperty, 1);
		_SetProperty_009.addInput(_GetProperty_007, 1);
		var _CanvasSetText_001 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_001.addInput(_SetProperty_009, 0);
		_CanvasSetText_001.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_001.addInput(new armory.logicnode.StringNode(this, "Player 1 turn!"), 0);
		var _Merge_010 = new armory.logicnode.MergeNode(this);
		var _CanvasSetText_003 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_003.addInput(_SetProperty_008, 0);
		_CanvasSetText_003.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_003.addInput(new armory.logicnode.StringNode(this, "Player 2 turn!"), 0);
		_CanvasSetText_003.addOutputs([_Merge_010]);
		_Merge_010.addInput(_CanvasSetText_003, 0);
		_Merge_010.addInput(_CanvasSetText_001, 0);
		var _CanvasSetText_005 = new armory.logicnode.CanvasSetTextNode(this);
		var _Merge_008 = new armory.logicnode.MergeNode(this);
		var _Gate_012 = new armory.logicnode.GateNode(this);
		_Gate_012.property0 = "Equal";
		_Gate_012.property1 = 9.999999747378752e-05;
		_Gate_012.addInput(_Merge_002, 0);
		_Gate_012.addInput(_GetProperty, 0);
		_Gate_012.addInput(_GetProperty_007, 1);
		_Gate_012.addOutputs([_Merge_008]);
		var _Merge_009 = new armory.logicnode.MergeNode(this);
		_Merge_009.addInput(_Gate_012, 1);
		var _Gate_013 = new armory.logicnode.GateNode(this);
		_Gate_013.property0 = "Equal";
		_Gate_013.property1 = 9.999999747378752e-05;
		var _Merge_007 = new armory.logicnode.MergeNode(this);
		_Merge_007.addInput(_Branch_010, 0);
		_Merge_007.addInput(_Branch_012, 0);
		_Merge_007.addOutputs([_Gate_013]);
		_Gate_013.addInput(_Merge_007, 0);
		_Gate_013.addInput(_GetProperty, 0);
		_Gate_013.addInput(_GetProperty_007, 1);
		_Gate_013.addOutputs([_Merge_009]);
		_Gate_013.addOutputs([_Merge_008]);
		_Merge_009.addInput(_Gate_013, 0);
		var _CanvasSetText_006 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_006.addInput(_Merge_009, 0);
		_CanvasSetText_006.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_006.addInput(new armory.logicnode.StringNode(this, "Player 1 win!"), 0);
		var _Merge_012 = new armory.logicnode.MergeNode(this);
		_Merge_012.addInput(_CanvasSetText_005, 0);
		_Merge_012.addInput(_CanvasSetText_006, 0);
		var _Timer = new armory.logicnode.TimerNode(this);
		_Timer.addInput(_Merge_012, 0);
		_Timer.addInput(new armory.logicnode.NullNode(this), 0);
		var _OnEvent_001 = new armory.logicnode.OnEventNode(this);
		_OnEvent_001.property0 = "MainMenuConfirm";
		var _Timer_001 = new armory.logicnode.TimerNode(this);
		_Timer_001.addInput(_Merge_010, 0);
		_Timer_001.addInput(new armory.logicnode.NullNode(this), 0);
		_Timer_001.addInput(_OnEvent_001, 0);
		_Timer_001.addInput(new armory.logicnode.FloatNode(this, 3.0), 0);
		_Timer_001.addInput(new armory.logicnode.IntegerNode(this, 1), 0);
		_Timer_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _CanvasSetText_004 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_004.addInput(_Timer_001, 1);
		_CanvasSetText_004.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_004.addInput(new armory.logicnode.StringNode(this, " "), 0);
		_CanvasSetText_004.addOutputs([new armory.logicnode.NullNode(this)]);
		_Timer_001.addOutputs([_CanvasSetText_004]);
		_Timer_001.addOutputs([new armory.logicnode.BooleanNode(this, false)]);
		_Timer_001.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer_001.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer_001.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Timer_001.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_OnEvent_001.addOutputs([_Timer, _Timer_001]);
		_Timer.addInput(_OnEvent_001, 0);
		_Timer.addInput(new armory.logicnode.FloatNode(this, 3.0), 0);
		_Timer.addInput(new armory.logicnode.IntegerNode(this, 1), 0);
		_Timer.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SendGlobalEvent_001 = new armory.logicnode.SendGlobalEventNode(this);
		_SendGlobalEvent_001.addInput(_Timer, 1);
		_SendGlobalEvent_001.addInput(new armory.logicnode.StringNode(this, "RestartConfirm"), 0);
		_SendGlobalEvent_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Timer.addOutputs([_SendGlobalEvent_001]);
		_Timer.addOutputs([new armory.logicnode.BooleanNode(this, false)]);
		_Timer.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Merge_012.addOutputs([_Timer]);
		_CanvasSetText_006.addOutputs([_Merge_012, _Merge_010]);
		_Merge_009.addOutputs([_CanvasSetText_006]);
		_Gate_012.addOutputs([_Merge_009]);
		_Merge_008.addInput(_Gate_012, 0);
		_Merge_008.addInput(_Gate_013, 1);
		_Merge_008.addOutputs([_CanvasSetText_005]);
		_CanvasSetText_005.addInput(_Merge_008, 0);
		_CanvasSetText_005.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_005.addInput(new armory.logicnode.StringNode(this, "Player 2 win!"), 0);
		_CanvasSetText_005.addOutputs([_Merge_012, _Merge_010]);
		_Merge_010.addInput(_CanvasSetText_005, 0);
		_Merge_010.addInput(_CanvasSetText_006, 0);
		var _CanvasSetText_009 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_009.addInput(_Gate_010, 0);
		_CanvasSetText_009.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_009.addInput(new armory.logicnode.StringNode(this, "Player 1 balls are solids!"), 0);
		_CanvasSetText_009.addOutputs([_Merge_010]);
		_Merge_010.addInput(_CanvasSetText_009, 0);
		var _CanvasSetText_010 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_010.addInput(_Gate_019, 0);
		_CanvasSetText_010.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_010.addInput(new armory.logicnode.StringNode(this, "Player 1 balls are stripeds!"), 0);
		_CanvasSetText_010.addOutputs([_Merge_010]);
		_Merge_010.addInput(_CanvasSetText_010, 0);
		var _CanvasSetText_011 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_011.addInput(_Gate_010, 1);
		_CanvasSetText_011.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_011.addInput(new armory.logicnode.StringNode(this, "Player 2 balls are solids!"), 0);
		_CanvasSetText_011.addOutputs([_Merge_010]);
		_Merge_010.addInput(_CanvasSetText_011, 0);
		var _CanvasSetText_012 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_012.addInput(_Gate_019, 1);
		_CanvasSetText_012.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetText_012.addInput(new armory.logicnode.StringNode(this, "Player 2 balls are stripeds!"), 0);
		_CanvasSetText_012.addOutputs([_Merge_010]);
		_Merge_010.addInput(_CanvasSetText_012, 0);
		_Merge_010.addOutputs([_Timer_001]);
		_CanvasSetText_001.addOutputs([_Merge_010]);
		_SetProperty_009.addOutputs([_Merge_011, _CanvasSetText_001]);
		_Merge_011.addInput(_SetProperty_009, 0);
		var _CanvasSetText_002 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_002.addInput(_Merge_011, 0);
		_CanvasSetText_002.addInput(_GetProperty, 1);
		_CanvasSetText_002.addInput(_GetProperty, 0);
		_CanvasSetText_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_Merge_011.addOutputs([_CanvasSetText_002]);
		_SetProperty_008.addOutputs([_Merge_011, _CanvasSetText_003]);
		_GetProperty_008.addOutputs([_SetProperty_006, _SetProperty_005, _SetProperty_008]);
		_SetProperty_005.addInput(_GetProperty_008, 1);
		_SetProperty_005.addInput(_GetProperty_005, 1);
		_SetProperty_005.addOutputs([_Merge_001]);
		_Merge_003.addOutputs([_SetProperty_005]);
		_Gate_010.addOutputs([_Merge_003, _Merge_014, _CanvasSetText_009]);
		var _Merge_015 = new armory.logicnode.MergeNode(this);
		_Merge_015.addInput(_Gate_019, 0);
		_Merge_015.addInput(_Gate_010, 1);
		var _SetProperty_004 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_004.addInput(_Merge_015, 0);
		_SetProperty_004.addInput(_Self, 0);
		_SetProperty_004.addInput(_GetProperty_007, 1);
		_SetProperty_004.addInput(_GetProperty_005, 1);
		_SetProperty_004.addOutputs([_Merge_001]);
		_Merge_015.addOutputs([_SetProperty_004]);
		_Gate_010.addOutputs([_Merge_013, _Merge_015, _CanvasSetText_011]);
		_Merge_014.addInput(_Gate_010, 0);
		_Merge_014.addInput(_Gate_019, 1);
		_Merge_014.addOutputs([_SetProperty_003]);
		_SetProperty_003.addInput(_Merge_014, 0);
		_SetProperty_003.addInput(_Self, 0);
		_SetProperty_003.addInput(_GetProperty_007, 1);
		_SetProperty_003.addInput(_GetProperty_004, 1);
		_SetProperty_003.addOutputs([_Merge_001]);
		_GetProperty_007.addOutputs([_SetProperty_003, _SetProperty_004, _SetProperty_009, _Gate_008, _Gate_012, _Gate_013, _Gate_010, _Gate_019]);
		_Gate_008.addInput(_GetProperty_007, 1);
		_Gate_008.addOutputs([_SetProperty_008]);
		_Gate_008.addOutputs([_SetProperty_009]);
		_GetProperty.addOutputs([_GetProperty_011, _Gate_008, _Gate_012, _Gate_013, _CanvasSetText_002, _Gate_010, _Gate_019]);
		_GetProperty.addOutputs([_SetProperty_008, _SetProperty_009, _CanvasSetText_002]);
		_Gate_019.addInput(_GetProperty, 0);
		_Gate_019.addInput(_GetProperty_007, 1);
		_Gate_019.addOutputs([_Merge_013, _Merge_015, _CanvasSetText_010]);
		_Gate_019.addOutputs([_Merge_003, _Merge_014, _CanvasSetText_012]);
		_SetProperty_001.addOutputs([_Gate_019]);
		_GetProperty_005.addOutputs([_SetProperty_001, _SetProperty_004, _SetProperty_005, _CanvasSetText_008]);
		_Gate_017.addInput(_GetProperty_005, 0);
		var _Integer = new armory.logicnode.IntegerNode(this);
		_Integer.addInput(new armory.logicnode.IntegerNode(this, 7), 0);
		_Integer.addOutputs([_Gate_016, _Gate_017]);
		_Gate_017.addInput(_Integer, 0);
		_Gate_017.addOutputs([_SetProperty_012]);
		_Gate_017.addOutputs([new armory.logicnode.NullNode(this)]);
		_SetProperty_012.addInput(_Gate_017, 0);
		_SetProperty_012.addInput(_Self, 0);
		_SetProperty_012.addInput(_GetProperty_014, 1);
		_SetProperty_012.addInput(_Boolean, 0);
		_SetProperty_012.addOutputs([new armory.logicnode.NullNode(this)]);
		_Boolean.addOutputs([_SetProperty_010, _SetProperty_011, _SetProperty_012]);
		_SetProperty_011.addInput(_Boolean, 0);
		_SetProperty_011.addOutputs([new armory.logicnode.NullNode(this)]);
		_GetProperty_013.addOutputs([_SetProperty_011]);
		_Branch_010.addInput(_GetProperty_013, 0);
		_Branch_010.addOutputs([_Merge_007]);
		_Branch_010.addOutputs([_Merge_002]);
		_Merge_002.addInput(_Branch_010, 1);
		_Merge_002.addInput(_Branch_012, 1);
		_Merge_002.addOutputs([_Gate_012]);
		_Gate_009.addOutputs([_Merge_002]);
		_Branch_009.addInput(_Gate_009, 0);
		_Branch_009.addInput(_GetProperty_009, 0);
		_Branch_009.addOutputs([_Merge_002]);
		_Branch_009.addOutputs([_Gate_011]);
		_Gate_011.addInput(_Branch_009, 1);
		_Gate_011.addInput(_GetProperty_001, 0);
		_Gate_011.addInput(_GetProperty_004, 1);
		_Gate_011.addOutputs([_Branch_010]);
		_Gate_011.addOutputs([_Branch_012]);
		_Branch_012.addInput(_Gate_011, 1);
		_Branch_012.addInput(_GetProperty_014, 0);
		_Branch_012.addOutputs([_Merge_007]);
		_Branch_012.addOutputs([_Merge_002]);
		_GetProperty_014.addOutputs([_Branch_012, _Branch_013]);
		_GetProperty_014.addOutputs([_SetProperty_012]);
		_Branch_013.addInput(_GetProperty_014, 0);
		_Branch_013.addOutputs([_Merge_018]);
		_Branch_013.addOutputs([_Merge_019]);
		_Merge_019.addInput(_Branch_013, 1);
		_Merge_019.addOutputs([_Gate_006]);
		_Gate_006.addInput(_Merge_019, 0);
		_Gate_006.addInput(_GetProperty_006, 0);
		_Gate_006.addInput(_GetProperty_001, 0);
		_Gate_006.addOutputs([_Merge_017]);
		_Gate_006.addOutputs([_Merge]);
		_Merge.addInput(_Gate_006, 1);
		_Merge.addOutputs([_Sequence]);
		_Sequence.addInput(_Merge, 0);
		_Sequence.addOutputs([_Merge_006]);
		_Sequence.addOutputs([_SetProperty_010]);
		_Sequence.addOutputs([_Merge_005]);
		_Merge_005.addInput(_Sequence, 2);
		_Merge_005.addInput(_Sequence_002, 1);
		_Merge_005.addOutputs([_Sequence_003]);
		_Sequence_003.addInput(_Merge_005, 0);
		_Sequence_003.addOutputs([_Sequence_005]);
		_Sequence_003.addOutputs([_Sequence_004]);
		_Sequence_003.addOutputs([_CanvasSetText]);
		var _SendGlobalEvent = new armory.logicnode.SendGlobalEventNode(this);
		_SendGlobalEvent.addInput(_Sequence_003, 3);
		_SendGlobalEvent.addInput(new armory.logicnode.StringNode(this, "ShowInterface"), 0);
		_SendGlobalEvent.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_003.addOutputs([_SendGlobalEvent]);
		_Sequence_004.addInput(_Sequence_003, 1);
		_Sequence_004.addOutputs([_Gate_016]);
		_Sequence_004.addOutputs([_Gate_017]);
		_Gate_016.addInput(_Sequence_004, 0);
		_Gate_016.addInput(_GetProperty_004, 0);
		_Gate_016.addInput(_Integer, 0);
		_Gate_016.addOutputs([_SetProperty_011]);
		_Gate_016.addOutputs([new armory.logicnode.NullNode(this)]);
		_GetProperty_004.addOutputs([_Gate_016, _CanvasSetText_007]);
		_GetProperty_004.addOutputs([_SetProperty, _SetProperty_003, _SetProperty_006, _Gate_007, _Gate_018, _Gate_011, _CanvasSetText_007]);
		_Gate_018.addInput(_GetProperty_004, 1);
		_Gate_018.addOutputs([_Branch_014]);
		_Gate_018.addOutputs([_Branch_013]);
		_Branch_014.addInput(_Gate_018, 0);
		_Branch_014.addInput(_GetProperty_013, 0);
		_Branch_014.addOutputs([_Merge_018]);
		_Branch_014.addOutputs([_Merge_019]);
		_Merge_018.addInput(_Branch_014, 0);
		_Merge_018.addInput(_Branch_013, 0);
		_Merge_018.addOutputs([_Gate_015]);
		_Gate_015.addInput(_Merge_018, 0);
		_Gate_015.addInput(_GetProperty_006, 0);
		_Gate_015.addInput(_String_002, 0);
		_Gate_015.addOutputs([_Merge_017]);
		_Gate_015.addOutputs([_Merge]);
		_Merge_017.addInput(_Gate_015, 0);
		_Merge_017.addInput(_Gate_006, 0);
		_Merge_017.addOutputs([_Gate_007]);
		_Gate_007.addInput(_Merge_017, 0);
		_Gate_007.addInput(_GetProperty_001, 0);
		_Gate_007.addInput(_GetProperty_004, 1);
		_Gate_007.addOutputs([_Branch_005]);
		var _Branch_006 = new armory.logicnode.BranchNode(this);
		_Branch_006.addInput(_Gate_007, 1);
		_Branch_006.addInput(_GetProperty_003, 0);
		_Branch_006.addOutputs([_Merge_001]);
		_Branch_006.addOutputs([_Merge_004]);
		_Gate_007.addOutputs([_Branch_006]);
		_Branch_005.addInput(_Gate_007, 0);
		_Branch_005.addInput(_GetProperty_002, 0);
		_Branch_005.addOutputs([_Merge_001]);
		_Branch_005.addOutputs([_Merge_004]);
		_Merge_001.addInput(_Branch_005, 0);
		_Merge_001.addInput(_Branch_006, 0);
		_Merge_001.addInput(_SetProperty_005, 0);
		_Merge_001.addInput(_SetProperty_006, 0);
		_Merge_001.addInput(_SetProperty_004, 0);
		_Merge_001.addInput(_SetProperty_003, 0);
		_Merge_001.addOutputs([_Merge_005]);
		_Branch_002.addOutputs([_Merge_001]);
		_Branch_002.addOutputs([_SetProperty]);
		_GetProperty_003.addOutputs([_Branch_002, _Branch_003, _Branch_006]);
		_GetProperty_003.addOutputs([new armory.logicnode.StringNode(this, "")]);
		_Branch_003.addInput(_GetProperty_003, 0);
		_Branch_003.addOutputs([_SetProperty_001]);
		_Branch_003.addOutputs([_Merge_004]);
		_Merge_004.addInput(_Branch_003, 1);
		_Merge_004.addInput(_Branch_005, 1);
		_Merge_004.addInput(_Branch_006, 1);
		_Merge_004.addOutputs([_Sequence_001]);
		_Sequence_001.addInput(_Merge_004, 0);
		_Sequence_001.addOutputs([_Merge_006]);
		_Sequence_001.addOutputs([_Merge_005]);
		_Merge_006.addInput(_Sequence_001, 0);
		_Merge_006.addInput(_Sequence, 0);
		_Merge_006.addInput(_Sequence_002, 0);
		_Merge_006.addOutputs([_Gate_008]);
		_Sequence_002.addOutputs([_Merge_006]);
		_Sequence_002.addOutputs([_Merge_005]);
		var _SendGlobalEvent_002 = new armory.logicnode.SendGlobalEventNode(this);
		_SendGlobalEvent_002.addInput(_Sequence_002, 2);
		_SendGlobalEvent_002.addInput(new armory.logicnode.StringNode(this, "ForceRearm"), 0);
		_SendGlobalEvent_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_002.addOutputs([_SendGlobalEvent_002]);
		_Merge_016.addOutputs([_Sequence_002]);
		_Branch_008.addOutputs([_Merge_016]);
		_Branch_008.addOutputs([_Branch_007]);
		_GetProperty_009.addOutputs([_Branch, _Branch_008, _Branch_009]);
		_GetProperty_009.addOutputs([new armory.logicnode.StringNode(this, "")]);
		_Branch.addInput(_GetProperty_009, 0);
		_Branch.addOutputs([_Merge_016]);
		_Branch.addOutputs([_Gate]);
		_Gate.addInput(_Branch, 1);
		_Gate.addInput(_GetProperty_006, 0);
		var _String_003 = new armory.logicnode.StringNode(this);
		_String_003.addInput(new armory.logicnode.StringNode(this, "Cushion"), 0);
		_String_003.addOutputs([_Gate]);
		_Gate.addInput(_String_003, 0);
		_Gate.addOutputs([_Merge]);
		_Gate.addOutputs([_Gate_001]);
		_Gate_001.addInput(_Gate, 1);
		_Gate_001.addInput(_GetProperty_006, 0);
		_Gate_001.addInput(_String_002, 0);
		_Gate_001.addOutputs([_Merge]);
		_Gate_001.addOutputs([_Gate_014]);
		_Gate_014.addInput(_Gate_001, 1);
		_Gate_014.addInput(_GetProperty_006, 0);
		var _String = new armory.logicnode.StringNode(this);
		_String.addInput(new armory.logicnode.StringNode(this, "None"), 0);
		_String.addOutputs([_Gate_003, _Gate_014]);
		_Gate_014.addInput(_String, 0);
		_Gate_014.addOutputs([_Merge]);
		_Gate_014.addOutputs([_Branch_001]);
		_Branch_001.addInput(_Gate_014, 1);
		_Branch_001.addInput(_GetProperty_002, 0);
		_Branch_001.addOutputs([_Branch_002]);
		_Branch_001.addOutputs([_Branch_003]);
		_GetProperty_002.addOutputs([_Branch_001, _Branch_005]);
		_GetProperty_002.addOutputs([new armory.logicnode.StringNode(this, "")]);
		_Self.addOutputs([_GetProperty_002, _GetProperty_003, _GetProperty_001, _GetProperty, _GetProperty_004, _GetProperty_005, _GetProperty_006, _GetProperty_007, _GetProperty_008, _GetProperty_009, _SetProperty, _SetProperty_001, _SetProperty_003, _SetProperty_004, _SetProperty_006, _SetProperty_005, _GetProperty_011, _SetProperty_009, _SetProperty_008, _GetProperty_013, _GetProperty_014, _SetProperty_011, _SetProperty_012, _SetProperty_007]);
		_GetProperty_001.addInput(_Self, 0);
		_GetProperty_001.addInput(new armory.logicnode.StringNode(this, "CurrentBall"), 0);
		_GetProperty_001.addOutputs([_Gate_003, _Gate_006, _Gate_007, _Gate_011, _Gate_018]);
		_GetProperty_001.addOutputs([_SetProperty, _SetProperty_001, _SetProperty_007, _CanvasSetText]);
		_Gate_003.addInput(_GetProperty_001, 0);
		_Gate_003.addInput(_String, 0);
		_Gate_003.addOutputs([_Branch_004]);
		_Gate_003.addOutputs([_Branch_008]);
		_Branch_004.addInput(_Gate_003, 0);
		_Branch_004.addInput(_GetProperty_010, 0);
		_Branch_004.addOutputs([new armory.logicnode.NullNode(this)]);
		_Branch_004.addOutputs([_Branch]);
		_GetProperty_010.addOutputs([_Branch_004, _Branch_007, _Branch_011]);
		_GetProperty_010.addOutputs([new armory.logicnode.StringNode(this, "")]);
		_Branch_011.addInput(_GetProperty_010, 0);
		_Branch_011.addOutputs([_Gate_009]);
		_Branch_011.addOutputs([_Gate_003]);
		_Sequence_006.addOutputs([_Branch_011]);
		_SetProperty_007.addInput(_Sequence_006, 0);
		_SetProperty_007.addInput(_Self, 0);
		_SetProperty_007.addInput(_GetProperty_001, 1);
		_SetProperty_007.addInput(_GetProperty_011, 0);
		_SetProperty_007.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}
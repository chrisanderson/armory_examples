package phfa.node;

@:keep class PauseMenu extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _CanvasSetVisible_015 = new armory.logicnode.CanvasSetVisibleNode(this);
		var _Sequence_015 = new armory.logicnode.SequenceNode(this);
		var _Merge_008 = new armory.logicnode.MergeNode(this);
		var _OnEvent = new armory.logicnode.OnEventNode(this);
		_OnEvent.property0 = "PauseMenu";
		var _Merge_009 = new armory.logicnode.MergeNode(this);
		_Merge_009.addInput(_OnEvent, 0);
		var _OnEvent_003 = new armory.logicnode.OnEventNode(this);
		_OnEvent_003.property0 = "RestartCancel";
		var _Sequence_007 = new armory.logicnode.SequenceNode(this);
		_Sequence_007.addInput(_OnEvent_003, 0);
		var _Merge_003 = new armory.logicnode.MergeNode(this);
		var _Sequence_006 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_002 = new armory.logicnode.OnEventNode(this);
		_OnEvent_002.property0 = "RestartConfirm";
		_OnEvent_002.addOutputs([_Sequence_006]);
		_Sequence_006.addInput(_OnEvent_002, 0);
		_Sequence_006.addOutputs([_Merge_003]);
		var _Merge_006 = new armory.logicnode.MergeNode(this);
		_Merge_006.addInput(_Sequence_006, 1);
		var _Sequence_011 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_005 = new armory.logicnode.OnEventNode(this);
		_OnEvent_005.property0 = "MainMenuConfirm";
		_OnEvent_005.addOutputs([_Sequence_011]);
		_Sequence_011.addInput(_OnEvent_005, 0);
		var _Merge_013 = new armory.logicnode.MergeNode(this);
		_Merge_013.addInput(_Sequence_011, 0);
		var _Sequence_021 = new armory.logicnode.SequenceNode(this);
		_Sequence_021.addInput(_Merge_013, 0);
		var _CanvasSetText_006 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_006.addInput(_Sequence_021, 0);
		_CanvasSetText_006.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetText_006.addInput(new armory.logicnode.StringNode(this, "Wait"), 0);
		_CanvasSetText_006.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_021.addOutputs([_CanvasSetText_006]);
		var _CanvasSetText_007 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_007.addInput(_Sequence_021, 1);
		_CanvasSetText_007.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetText_007.addInput(new armory.logicnode.StringNode(this, "Processing..."), 0);
		_CanvasSetText_007.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_021.addOutputs([_CanvasSetText_007]);
		_Merge_013.addOutputs([_Sequence_021]);
		_Sequence_011.addOutputs([_Merge_013]);
		var _Merge_005 = new armory.logicnode.MergeNode(this);
		_Merge_005.addInput(_Sequence_011, 1);
		var _Sequence_012 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_006 = new armory.logicnode.OnEventNode(this);
		_OnEvent_006.property0 = "MainMenuCancel";
		_OnEvent_006.addOutputs([_Sequence_012, _Merge_009]);
		_Sequence_012.addInput(_OnEvent_006, 0);
		_Sequence_012.addOutputs([_Merge_005]);
		var _Merge = new armory.logicnode.MergeNode(this);
		var _Sequence = new armory.logicnode.SequenceNode(this);
		var _Sequence_019 = new armory.logicnode.SequenceNode(this);
		_Sequence_019.addInput(_OnEvent, 0);
		_Sequence_019.addOutputs([_Sequence]);
		_Sequence_019.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addInput(_Sequence_019, 0);
		var _CanvasSetVisible_019 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_019.addInput(_Sequence, 0);
		_CanvasSetVisible_019.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetVisible_019.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_019.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addOutputs([_CanvasSetVisible_019]);
		var _SetProperty_001 = new armory.logicnode.SetPropertyNode(this);
		_SetProperty_001.addInput(_Sequence, 1);
		_SetProperty_001.addInput(new armory.logicnode.ObjectNode(this, "White"), 0);
		var _GetProperty = new armory.logicnode.GetPropertyNode(this);
		_GetProperty.addInput(new armory.logicnode.ObjectNode(this, "White"), 0);
		_GetProperty.addInput(new armory.logicnode.StringNode(this, "LockScene"), 0);
		_GetProperty.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetProperty = new armory.logicnode.SetPropertyNode(this);
		var _Sequence_013 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_007 = new armory.logicnode.OnEventNode(this);
		_OnEvent_007.property0 = "Close";
		var _Merge_007 = new armory.logicnode.MergeNode(this);
		_Merge_007.addInput(_OnEvent_007, 0);
		var _Sequence_014 = new armory.logicnode.SequenceNode(this);
		_Sequence_014.addInput(_Merge_007, 0);
		var _CanvasSetVisible_017 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_017.addInput(_Sequence_014, 0);
		_CanvasSetVisible_017.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetVisible_017.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_017.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_014.addOutputs([_CanvasSetVisible_017]);
		var _CanvasSetVisible_018 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_018.addInput(_Sequence_014, 1);
		_CanvasSetVisible_018.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetVisible_018.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_018.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_014.addOutputs([_CanvasSetVisible_018]);
		_Merge_007.addOutputs([_Sequence_014]);
		_OnEvent_007.addOutputs([_Sequence_013, _Merge_007]);
		_Sequence_013.addInput(_OnEvent_007, 0);
		var _Merge_002 = new armory.logicnode.MergeNode(this);
		var _Sequence_005 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_001 = new armory.logicnode.OnEventNode(this);
		_OnEvent_001.property0 = "Restart";
		var _Merge_012 = new armory.logicnode.MergeNode(this);
		_Merge_012.addInput(_OnEvent_001, 0);
		var _Sequence_018 = new armory.logicnode.SequenceNode(this);
		_Sequence_018.addInput(_Merge_012, 0);
		var _CanvasSetText = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText.addInput(_Sequence_018, 0);
		_CanvasSetText.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetText.addInput(new armory.logicnode.StringNode(this, "Restart"), 0);
		_CanvasSetText.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_018.addOutputs([_CanvasSetText]);
		var _CanvasSetText_001 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_001.addInput(_Sequence_018, 1);
		_CanvasSetText_001.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetText_001.addInput(new armory.logicnode.StringNode(this, "Are  you sure?"), 0);
		_CanvasSetText_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_018.addOutputs([_CanvasSetText_001]);
		_Merge_012.addOutputs([_Sequence_018]);
		_OnEvent_001.addOutputs([_Sequence_005, _Merge_012]);
		_Sequence_005.addInput(_OnEvent_001, 0);
		_Sequence_005.addOutputs([_Merge_002]);
		var _Merge_001 = new armory.logicnode.MergeNode(this);
		_Merge_001.addInput(_Sequence_005, 1);
		var _Sequence_002 = new armory.logicnode.SequenceNode(this);
		_Sequence_002.addInput(_Merge_001, 0);
		var _CanvasSetVisible_005 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_005.addInput(_Sequence_002, 0);
		_CanvasSetVisible_005.addInput(new armory.logicnode.StringNode(this, "RestartConfirm"), 0);
		_CanvasSetVisible_005.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_005.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_002.addOutputs([_CanvasSetVisible_005]);
		var _CanvasSetVisible_006 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_006.addInput(_Sequence_002, 1);
		_CanvasSetVisible_006.addInput(new armory.logicnode.StringNode(this, "RestartCancel"), 0);
		_CanvasSetVisible_006.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_006.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_002.addOutputs([_CanvasSetVisible_006]);
		_Merge_001.addOutputs([_Sequence_002]);
		_Sequence_005.addOutputs([_Merge_001]);
		_Merge_002.addInput(_Sequence_005, 0);
		var _Sequence_010 = new armory.logicnode.SequenceNode(this);
		var _OnEvent_004 = new armory.logicnode.OnEventNode(this);
		_OnEvent_004.property0 = "MainMenu";
		var _Merge_011 = new armory.logicnode.MergeNode(this);
		_Merge_011.addInput(_OnEvent_004, 0);
		var _Sequence_017 = new armory.logicnode.SequenceNode(this);
		_Sequence_017.addInput(_Merge_011, 0);
		var _CanvasSetText_002 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_002.addInput(_Sequence_017, 0);
		_CanvasSetText_002.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetText_002.addInput(new armory.logicnode.StringNode(this, "Main menu"), 0);
		_CanvasSetText_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_017.addOutputs([_CanvasSetText_002]);
		var _CanvasSetText_003 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_003.addInput(_Sequence_017, 1);
		_CanvasSetText_003.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetText_003.addInput(new armory.logicnode.StringNode(this, "Are you sure?"), 0);
		_CanvasSetText_003.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_017.addOutputs([_CanvasSetText_003]);
		_Merge_011.addOutputs([_Sequence_017]);
		_OnEvent_004.addOutputs([_Sequence_010, _Merge_011]);
		_Sequence_010.addInput(_OnEvent_004, 0);
		_Sequence_010.addOutputs([_Merge_002]);
		var _Merge_004 = new armory.logicnode.MergeNode(this);
		_Merge_004.addInput(_Sequence_010, 1);
		var _Sequence_008 = new armory.logicnode.SequenceNode(this);
		_Sequence_008.addInput(_Merge_004, 0);
		var _CanvasSetVisible_011 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_011.addInput(_Sequence_008, 0);
		_CanvasSetVisible_011.addInput(new armory.logicnode.StringNode(this, "MainMenuConfirm"), 0);
		_CanvasSetVisible_011.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_011.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_008.addOutputs([_CanvasSetVisible_011]);
		var _CanvasSetVisible_012 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_012.addInput(_Sequence_008, 1);
		_CanvasSetVisible_012.addInput(new armory.logicnode.StringNode(this, "MainMenuCancel"), 0);
		_CanvasSetVisible_012.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_012.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_008.addOutputs([_CanvasSetVisible_012]);
		_Merge_004.addOutputs([_Sequence_008]);
		_Sequence_010.addOutputs([_Merge_004]);
		_Merge_002.addInput(_Sequence_010, 0);
		_Merge_002.addInput(_Sequence_013, 0);
		var _Sequence_003 = new armory.logicnode.SequenceNode(this);
		_Sequence_003.addInput(_Merge_002, 0);
		var _CanvasSetVisible_008 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_008.addInput(_Sequence_003, 0);
		_CanvasSetVisible_008.addInput(new armory.logicnode.StringNode(this, "Restart"), 0);
		_CanvasSetVisible_008.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_008.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_003.addOutputs([_CanvasSetVisible_008]);
		var _CanvasSetVisible_004 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_004.addInput(_Sequence_003, 1);
		_CanvasSetVisible_004.addInput(new armory.logicnode.StringNode(this, "MainMenu"), 0);
		_CanvasSetVisible_004.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_004.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_003.addOutputs([_CanvasSetVisible_004]);
		var _CanvasSetVisible_009 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_009.addInput(_Sequence_003, 2);
		_CanvasSetVisible_009.addInput(new armory.logicnode.StringNode(this, "Close"), 0);
		_CanvasSetVisible_009.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_009.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_003.addOutputs([_CanvasSetVisible_009]);
		_Merge_002.addOutputs([_Sequence_003]);
		_Sequence_013.addOutputs([_Merge_002]);
		_Sequence_013.addOutputs([_Merge_006]);
		var _CanvasSetVisible_020 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_020.addInput(_Sequence_013, 2);
		_CanvasSetVisible_020.addInput(new armory.logicnode.StringNode(this, "Message"), 0);
		_CanvasSetVisible_020.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_020.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_013.addOutputs([_CanvasSetVisible_020]);
		var _SendGlobalEvent_001 = new armory.logicnode.SendGlobalEventNode(this);
		_SendGlobalEvent_001.addInput(_Sequence_013, 3);
		_SendGlobalEvent_001.addInput(new armory.logicnode.StringNode(this, "ShowInterface"), 0);
		_SendGlobalEvent_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_013.addOutputs([_SendGlobalEvent_001]);
		_Sequence_013.addOutputs([_SetProperty]);
		_SetProperty.addInput(_Sequence_013, 4);
		_SetProperty.addInput(new armory.logicnode.ObjectNode(this, "White"), 0);
		_SetProperty.addInput(_GetProperty, 1);
		var _Boolean_001 = new armory.logicnode.BooleanNode(this);
		_Boolean_001.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_Boolean_001.addOutputs([_SetProperty]);
		_SetProperty.addInput(_Boolean_001, 0);
		_SetProperty.addOutputs([new armory.logicnode.NullNode(this)]);
		_GetProperty.addOutputs([_SetProperty, _SetProperty_001]);
		_SetProperty_001.addInput(_GetProperty, 1);
		var _Boolean = new armory.logicnode.BooleanNode(this);
		_Boolean.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_Boolean.addOutputs([_SetProperty_001]);
		_SetProperty_001.addInput(_Boolean, 0);
		_SetProperty_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addOutputs([_SetProperty_001]);
		var _SetTimeScale = new armory.logicnode.SetTimeScaleNode(this);
		_SetTimeScale.addInput(_Sequence, 2);
		_SetTimeScale.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_SetTimeScale.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addOutputs([_SetTimeScale]);
		var _SendGlobalEvent = new armory.logicnode.SendGlobalEventNode(this);
		_SendGlobalEvent.addInput(_Sequence, 3);
		_SendGlobalEvent.addInput(new armory.logicnode.StringNode(this, "HideInterface"), 0);
		_SendGlobalEvent.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addOutputs([_SendGlobalEvent]);
		var _CanvasSetVisible = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible.addInput(_Sequence, 4);
		_CanvasSetVisible.addInput(new armory.logicnode.StringNode(this, "PauseMenu"), 0);
		_CanvasSetVisible.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence.addOutputs([_CanvasSetVisible]);
		_Sequence.addOutputs([_Merge]);
		_Merge.addInput(_Sequence, 5);
		_Merge.addInput(_Sequence_007, 1);
		_Merge.addInput(_Sequence_012, 1);
		var _Sequence_001 = new armory.logicnode.SequenceNode(this);
		_Sequence_001.addInput(_Merge, 0);
		var _CanvasSetVisible_001 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_001.addInput(_Sequence_001, 0);
		_CanvasSetVisible_001.addInput(new armory.logicnode.StringNode(this, "Restart"), 0);
		_CanvasSetVisible_001.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_001.addOutputs([_CanvasSetVisible_001]);
		var _CanvasSetVisible_002 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_002.addInput(_Sequence_001, 1);
		_CanvasSetVisible_002.addInput(new armory.logicnode.StringNode(this, "MainMenu"), 0);
		_CanvasSetVisible_002.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_001.addOutputs([_CanvasSetVisible_002]);
		var _CanvasSetVisible_003 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_003.addInput(_Sequence_001, 2);
		_CanvasSetVisible_003.addInput(new armory.logicnode.StringNode(this, "Close"), 0);
		_CanvasSetVisible_003.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_003.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_001.addOutputs([_CanvasSetVisible_003]);
		_Merge.addOutputs([_Sequence_001]);
		_Sequence_012.addOutputs([_Merge]);
		_Merge_005.addInput(_Sequence_012, 0);
		var _Sequence_009 = new armory.logicnode.SequenceNode(this);
		_Sequence_009.addInput(_Merge_005, 0);
		var _CanvasSetVisible_013 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_013.addInput(_Sequence_009, 0);
		_CanvasSetVisible_013.addInput(new armory.logicnode.StringNode(this, "MainMenuConfirm"), 0);
		_CanvasSetVisible_013.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_013.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_009.addOutputs([_CanvasSetVisible_013]);
		var _CanvasSetVisible_014 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_014.addInput(_Sequence_009, 1);
		_CanvasSetVisible_014.addInput(new armory.logicnode.StringNode(this, "MainMenuCancel"), 0);
		_CanvasSetVisible_014.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_014.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_009.addOutputs([_CanvasSetVisible_014]);
		_Merge_005.addOutputs([_Sequence_009]);
		_Sequence_011.addOutputs([_Merge_005]);
		_Sequence_011.addOutputs([_Merge_006]);
		var _Timer = new armory.logicnode.TimerNode(this);
		_Timer.addInput(_Sequence_011, 3);
		_Timer.addInput(new armory.logicnode.NullNode(this), 0);
		_Timer.addInput(new armory.logicnode.NullNode(this), 0);
		_Timer.addInput(new armory.logicnode.FloatNode(this, 1.0), 0);
		_Timer.addInput(new armory.logicnode.IntegerNode(this, 1), 0);
		_Timer.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetScene_001 = new armory.logicnode.SetSceneNode(this);
		_SetScene_001.addInput(_Timer, 1);
		var _Scene_001 = new armory.logicnode.SceneNode(this);
		_Scene_001.property0 = "MainMenu";
		_Scene_001.addOutputs([_SetScene_001]);
		_SetScene_001.addInput(_Scene_001, 0);
		_SetScene_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_SetScene_001.addOutputs([new armory.logicnode.ObjectNode(this, "")]);
		_Timer.addOutputs([_SetScene_001]);
		_Timer.addOutputs([new armory.logicnode.BooleanNode(this, false)]);
		_Timer.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Sequence_011.addOutputs([_Timer]);
		_Merge_006.addInput(_Sequence_011, 2);
		_Merge_006.addInput(_Sequence_013, 1);
		var _SetTimeScale_001 = new armory.logicnode.SetTimeScaleNode(this);
		_SetTimeScale_001.addInput(_Merge_006, 0);
		_SetTimeScale_001.addInput(new armory.logicnode.FloatNode(this, 1.0), 0);
		_SetTimeScale_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Merge_006.addOutputs([_SetTimeScale_001]);
		_Sequence_006.addOutputs([_Merge_006]);
		var _SetScene = new armory.logicnode.SetSceneNode(this);
		_SetScene.addInput(_Sequence_006, 2);
		var _ActiveScene = new armory.logicnode.ActiveSceneNode(this);
		_ActiveScene.addOutputs([_SetScene]);
		_SetScene.addInput(_ActiveScene, 0);
		_SetScene.addOutputs([new armory.logicnode.NullNode(this)]);
		_SetScene.addOutputs([new armory.logicnode.ObjectNode(this, "")]);
		_Sequence_006.addOutputs([_SetScene]);
		_Merge_003.addInput(_Sequence_006, 0);
		_Merge_003.addInput(_Sequence_007, 0);
		var _Sequence_004 = new armory.logicnode.SequenceNode(this);
		_Sequence_004.addInput(_Merge_003, 0);
		var _CanvasSetVisible_007 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_007.addInput(_Sequence_004, 0);
		_CanvasSetVisible_007.addInput(new armory.logicnode.StringNode(this, "RestartConfirm"), 0);
		_CanvasSetVisible_007.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_007.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_004.addOutputs([_CanvasSetVisible_007]);
		var _CanvasSetVisible_010 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_010.addInput(_Sequence_004, 1);
		_CanvasSetVisible_010.addInput(new armory.logicnode.StringNode(this, "RestartCancel"), 0);
		_CanvasSetVisible_010.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_CanvasSetVisible_010.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_004.addOutputs([_CanvasSetVisible_010]);
		_Merge_003.addOutputs([_Sequence_004]);
		_Sequence_007.addOutputs([_Merge_003]);
		_Sequence_007.addOutputs([_Merge]);
		_OnEvent_003.addOutputs([_Sequence_007, _Merge_009]);
		_Merge_009.addInput(_OnEvent_003, 0);
		_Merge_009.addInput(_OnEvent_006, 0);
		var _Sequence_016 = new armory.logicnode.SequenceNode(this);
		_Sequence_016.addInput(_Merge_009, 0);
		var _CanvasSetText_004 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_004.addInput(_Sequence_016, 0);
		_CanvasSetText_004.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetText_004.addInput(new armory.logicnode.StringNode(this, "Paused"), 0);
		_CanvasSetText_004.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_016.addOutputs([_CanvasSetText_004]);
		var _CanvasSetText_005 = new armory.logicnode.CanvasSetTextNode(this);
		_CanvasSetText_005.addInput(_Sequence_016, 1);
		_CanvasSetText_005.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetText_005.addInput(new armory.logicnode.StringNode(this, "Waiting"), 0);
		_CanvasSetText_005.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_016.addOutputs([_CanvasSetText_005]);
		_Merge_009.addOutputs([_Sequence_016]);
		_OnEvent.addOutputs([_Merge_008, _Merge_009, _Sequence_019]);
		_Merge_008.addInput(_OnEvent, 0);
		_Merge_008.addOutputs([_Sequence_015]);
		_Sequence_015.addInput(_Merge_008, 0);
		_Sequence_015.addOutputs([_CanvasSetVisible_015]);
		var _CanvasSetVisible_016 = new armory.logicnode.CanvasSetVisibleNode(this);
		_CanvasSetVisible_016.addInput(_Sequence_015, 1);
		_CanvasSetVisible_016.addInput(new armory.logicnode.StringNode(this, "Subtitle"), 0);
		_CanvasSetVisible_016.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_016.addOutputs([new armory.logicnode.NullNode(this)]);
		_Sequence_015.addOutputs([_CanvasSetVisible_016]);
		_CanvasSetVisible_015.addInput(_Sequence_015, 0);
		_CanvasSetVisible_015.addInput(new armory.logicnode.StringNode(this, "Title"), 0);
		_CanvasSetVisible_015.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_CanvasSetVisible_015.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}
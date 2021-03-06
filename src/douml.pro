TEMPLATE  =  app
INCLUDEPATH    += browser data diagram dialog misc tool xpm
DEPENDPATH += browser data diagram dialog misc tool xpm
INCLUDEPATH += boost src ui ..  Libs/L_UniversalModels
CONFIG += qt warn_on c++11
QMAKE_POST_LINK = " "

DEFINES += QT_DEPRECATED_WARNINGS

HEADERS        = \
    browser/BrowserActivityAction.h \
    browser/BrowserActivityDiagram.h \
    browser/BrowserActivityElement.h \
    browser/BrowserActivity.h \
    browser/BrowserActivityNode.h \
    browser/BrowserActivityObject.h \
    browser/BrowserActivityPartition.h \
    browser/BrowserArtifact.h \
    browser/BrowserAttribute.h \
    browser/BrowserClassDiagram.h \
    browser/BrowserClass.h \
    browser/BrowserClassInstance.h \
    browser/BrowserClassView.h \
    browser/BrowserColDiagram.h \
    browser/BrowserComponentDiagram.h \
    browser/BrowserComponent.h \
    browser/BrowserComponentView.h \
    browser/BrowserDeploymentDiagram.h \
    browser/BrowserDeploymentNode.h \
    browser/BrowserDeploymentView.h \
    browser/BrowserDiagram.h \
    browser/BrowserExpansionNode.h \
    browser/BrowserExpansionRegion.h \
    browser/BrowserExtraMember.h \
    browser/BrowserFlow.h \
    browser/BrowserInterruptibleActivityRegion.h \
    browser/BrowserNodeDummy.h \
    browser/BrowserNode.h \
    browser/BrowserObjectDiagram.h \
    browser/BrowserOperationAttribute.h \
    browser/BrowserOperation.h \
    browser/BrowserPackage.h \
    browser/BrowserParameter.h \
    browser/BrowserParameterSet.h \
    browser/BrowserPin.h \
    browser/BrowserPseudoState.h \
    browser/BrowserRegion.h \
    browser/BrowserRelation.h \
    browser/BrowserSeqDiagram.h \
    browser/BrowserSimpleRelation.h \
    browser/BrowserStateAction.h \
    browser/BrowserStateDiagram.h \
    browser/BrowserState.h \
    browser/BrowserTransition.h \
    browser/BrowserUseCaseDiagram.h \
    browser/BrowserUseCase.h \
    browser/BrowserUseCaseView.h \
    browserfunctions/operationfuncs.h \
    CustomWidgets/EdgeMenuToolBar.h \
    CustomWidgets/GenericDelegate.h \
    CustomWidgets/MultiPurposeDragArea.h \
    CustomWidgets/quickedit.h \
    data/ActivityActionData.h \
    data/ActivityData.h \
    data/ActivityObjectData.h \
    data/ActivityPartitionData.h \
    data/ActualParamData.h \
    data/ArtifactData.h \
    data/AttributeData.h \
    data/AType.h \
    data/BasicData.h \
    data/ClassData.h \
    data/ClassInstanceData.h \
    data/ClassMemberData.h \
    data/ExceptionData.h \
    data/ExpansionRegionData.h \
    data/ExtraMemberData.h \
    data/FlowData.h \
    data/FormalParamData.h \
    data/HaveKeyValueData.h \
    data/InfoData.h \
    data/KeyValueData.h \
    data/MultipleDependency.h \
    data/ObjectData.h \
    data/OperationData.h \
    data/PackageData.h \
    data/ParamData.h \
    data/ParameterData.h \
    data/ParameterSetData.h \
    data/PinData.h \
    data/PinParamData.h \
    data/PseudoStateData.h \
    data/RelationData.h \
    data/SimpleData.h \
    data/SimpleRelationData.h \
    data/StateActionData.h \
    data/StateData.h \
    data/TransitionData.h \
    data/UseCaseData.h \
    diagram/ActivityActionCanvas.h \
    diagram/ActivityCanvas.h \
    diagram/ActivityContainerCanvas.h \
    diagram/ActivityDiagramView.h \
    diagram/ActivityDiagramWindow.h \
    diagram/ActivityNodeCanvas.h \
    diagram/ActivityObjectCanvas.h \
    diagram/ActivityPartitionCanvas.h \
    diagram/ArrowCanvas.h \
    diagram/ArrowJunctionCanvas.h \
    diagram/ArrowPointCanvas.h \
    diagram/ArtifactCanvas.h \
    diagram/AssocContainCanvas.h \
    diagram/BrowserView.h \
    diagram/CdClassCanvas.h \
    diagram/ClassDiagramView.h \
    diagram/ClassDiagramWindow.h \
    diagram/ClassInstCanvas.h \
    diagram/CodClassInstCanvas.h \
    diagram/CodDirsCanvas.h \
    diagram/CodLinkCanvas.h \
    diagram/CodMsgSupport.h \
    diagram/CodObjCanvas.h \
    diagram/CodSelfLinkCanvas.h \
    diagram/ColDiagramView.h \
    diagram/ColDiagramWindow.h \
    diagram/ColMsg.h \
    diagram/ComponentCanvas.h \
    diagram/ComponentDiagramView.h \
    diagram/ComponentDiagramWindow.h \
    diagram/ConstraintCanvas.h \
    diagram/DeploymentDiagramView.h \
    diagram/DeploymentDiagramWindow.h \
    diagram/DeploymentNodeCanvas.h \
    diagram/DiagramCanvas.h \
    diagram/DiagramItem.h \
    diagram/DiagramView.h \
    diagram/DiagramWindow.h \
    diagram/ExpansionNodeCanvas.h \
    diagram/ExpansionRegionCanvas.h \
    diagram/FlowCanvas.h \
    diagram/FragmentCanvas.h \
    diagram/FragmentSeparatorCanvas.h \
    diagram/HubCanvas.h \
    diagram/IconCanvas.h \
    diagram/ImageCanvas.h \
    diagram/InfoCanvas.h \
    diagram/Instance.h \
    diagram/InterruptibleActivityRegionCanvas.h \
    diagram/LabelCanvas.h \
    diagram/NoteCanvas.h \
    diagram/ObjectDiagramView.h \
    diagram/ObjectDiagramWindow.h \
    diagram/ObjectLinkCanvas.h \
    diagram/OdClassInstCanvas.h \
    diagram/PackageCanvas.h \
    diagram/ParameterCanvas.h \
    diagram/ParameterSetCanvas.h \
    diagram/PinCanvas.h \
    diagram/PseudoStateCanvas.h \
    diagram/RelationCanvas.h \
    diagram/SdClassInstCanvas.h \
    diagram/SdContinuationCanvas.h \
    diagram/SdDurationCanvas.h \
    diagram/SdDurationSupport.h \
    diagram/SdLifeLineCanvas.h \
    diagram/SdLostFoundMsgSupportCanvas.h \
    diagram/SdMsgBaseCanvas.h \
    diagram/SdMsgCanvas.h \
    diagram/SdMsgSupport.h \
    diagram/SdObjCanvas.h \
    diagram/SdSelfMsgCanvas.h \
    diagram/SelectAreaCanvas.h \
    diagram/SeqDiagramView.h \
    diagram/SeqDiagramWindow.h \
    diagram/SimpleRelationCanvas.h \
    diagram/StateActionCanvas.h \
    diagram/StateCanvas.h \
    diagram/StateDiagramView.h \
    diagram/StateDiagramWindow.h \
    diagram/StereotypePropertiesCanvas.h \
    diagram/SubjectCanvas.h \
    diagram/TemplateCanvas.h \
    diagram/TextCanvas.h \
    diagram/TransitionCanvas.h \
    diagram/UcClassCanvas.h \
    diagram/UcUseCaseCanvas.h \
    diagram/UmlCanvas.h \
    diagram/UmlDesktop.h \
    diagram/UmlWindow.h \
    diagram/UseCaseDiagramView.h \
    diagram/UseCaseDiagramWindow.h \
    dialog/About.h \
    dialog/ActivityActionDialog.h \
    dialog/ActivityDialog.h \
    dialog/ActivityObjectDialog.h \
    dialog/ActivityPartitionDialog.h \
    dialog/AnnotationDialog.h \
    dialog/ArtifactDialog.h \
    dialog/AttributeDialog.h \
    dialog/BasicDialog.h \
    dialog/BodyDialog.h \
    dialog/BrowserSearchDialog.h \
#   dialog/CharSetDialog.h \
    dialog/ClassDialog.h \
    dialog/ClassInstanceDialog.h \
#   dialog/ClassInstDialog.h \
    dialog/ClassListDialog.h \
    dialog/ClassSettingsDialog.h \
    dialog/ClassViewDialog.h \
    dialog/CodAddMsgDialog.h \
    dialog/CodChangeMsgDialog.h \
    dialog/CodEditMsgDialog.h \
    dialog/ColMsgTable.h \
    dialog/ComboItem.h \
    dialog/ComponentDialog.h \
    dialog/ConstraintDialog.h \
    dialog/ContinuationDialog.h \
    dialog/DecoratorDialog.h \
    dialog/DialogTimer.h \
    dialog/DialogUtil.h \
    dialog/edgemenudialogbase.h \
    dialog/EdgeMenuDialog.h \
    dialog/edgemenudialogqt4.h \
#   dialog/Editable.h \
    dialog/EnvDialog.h \
    dialog/ExpansionRegionDialog.h \
    dialog/ExtraMemberDialog.h \
    dialog/FlowDialog.h \
    dialog/FragmentDialog.h \
    dialog/GenerationSettingsBuiltinTable.h \
    dialog/GenerationSettingsDialog.h \
    dialog/GreetingsDialog.h \
    dialog/HelpDialog.h \
    dialog/HelpRegexpDialog.h \
    dialog/HideShowDialog.h \
    dialog/ImageDialog.h \
    dialog/InstanceDialog.h \
    dialog/KeyValueTable.h \
    dialog/ListBoxBrowserNode.h \
#   dialog/MenuFont.h \
    dialog/MLEDialog.h \
    dialog/MLinesItem.h \
    dialog/MyInputDialog.h \
#   dialog/MyTabDialog.h \
    dialog/MyTable.h \
#   dialog/NodeInstDialog.h \
    dialog/ObjectLinkDialog.h \
    dialog/OperationDialog.h \
    dialog/OperationListDialog.h \
    dialog/PackageDialog.h \
    dialog/ParameterDialog.h \
    dialog/ParameterSetDialog.h \
    dialog/PinDialog.h \
    dialog/PseudoStateDialog.h \
    dialog/ReferenceDialog.h \
    dialog/RelatedElementsDialog.h \
    dialog/RelationDialog.h \
    dialog/RevSettingsDialog.h \
    dialog/SaveProgress.h \
    dialog/SdMsgDialog.h \
    dialog/SettingsDialog.h \
    dialog/ShortcutDialog.h \
    dialog/SimpleRelationDialog.h \
    dialog/SourceDialog.h \
    dialog/StateActionDialog.h \
    dialog/StateDialog.h \
    dialog/StateSpec.h \
    dialog/StereotypeDialog.h \
    dialog/StereotypesDialog.h \
    dialog/StringTable.h \
    dialog/tabdialog.h \
    dialog/tablewidgetitemdelegate.h \
    dialog/ToolDialog.h \
    dialog/TraceDialog.h \
    dialog/TransitionDialog.h \
    dialog/UseCaseDialog.h \
    dialog/version.h \
    dialog/VisibilityGroup.h \
    Factories/DialogConnections.h \
    Factories/EdgeMenuFactory.h \
    Factories/EdgeToolBarCreation.h \
    Logging/QsDebugOutput.h \
    Logging/QsLog.h \
    Logging/QsLogDest.h \
    misc/ClipboardManager.h \
    misc/codec.h \
    misc/err.h \
    misc/GenerateTypeId.h \
    misc/GenerationSettings.h \
    misc/Images.h \
    misc/Labeled.h \
    misc/mu.h \
    misc/myio.h \
    misc/mystr.h \
    misc/ProfiledStereotypes.h \
    misc/Settings.h \
    misc/Shortcut.h \
    misc/SingletonHolder.h \
    misc/strutil.h \
    misc/translate.h \
    misc/TypeIdentifier.h \
    misc/UmlDrag.h \
    misc/UmlEnum.h \
    misc/UmlGlobal.h \
    tagmanagement/cpptagmanagement.h \
    tool/snippets.h \
    tool/Socket.h \
    tool/ToolCom.h \
    tool/Tool.h \
    ui/bbuttongroup.h \
    ui/catalogwidget.h \
    ui/constructorinitializerdialog.h \
    ui/gridbox.h \
    ui/hhbox.h \
    ui/menufactory.h \
    ui/operationwidgetcpp.h \
    ui/toolbarfactory.h \
    ui/vvbox.h \
    ui/widgetwithlayout.h \
    xpm/UmlPixmap.h

SOURCES = \
    browser/BrowserActivityAction.cpp \
    browser/BrowserActivity.cpp \
    browser/BrowserActivityDiagram.cpp \
    browser/BrowserActivityNode.cpp \
    browser/BrowserActivityObject.cpp \
    browser/BrowserActivityPartition.cpp \
    browser/BrowserArtifact.cpp \
    browser/BrowserAttribute.cpp \
    browser/BrowserClass.cpp \
    browser/BrowserClassDiagram.cpp \
    browser/BrowserClassInstance.cpp \
    browser/BrowserClassView.cpp \
    browser/BrowserColDiagram.cpp \
    browser/BrowserComponent.cpp \
    browser/BrowserComponentDiagram.cpp \
    browser/BrowserComponentView.cpp \
    browser/BrowserDeploymentDiagram.cpp \
    browser/BrowserDeploymentNode.cpp \
    browser/BrowserDeploymentView.cpp \
    browser/BrowserDiagram.cpp \
    browser/BrowserExpansionNode.cpp \
    browser/BrowserExpansionRegion.cpp \
    browser/BrowserExtraMember.cpp \
    browser/BrowserFlow.cpp \
    browser/BrowserInterruptibleActivityRegion.cpp \
    browser/BrowserNode.cpp \
    browser/BrowserNodeDummy.cpp \
    browser/BrowserObjectDiagram.cpp \
    browser/BrowserOperationAttribute.cpp \
    browser/BrowserOperation.cpp \
    browser/BrowserPackage.cpp \
    browser/BrowserParameter.cpp \
    browser/BrowserParameterSet.cpp \
    browser/BrowserPin.cpp \
    browser/BrowserPseudoState.cpp \
    browser/BrowserRegion.cpp \
    browser/BrowserRelation.cpp \
    browser/BrowserSeqDiagram.cpp \
    browser/BrowserSimpleRelation.cpp \
    browser/BrowserStateAction.cpp \
    browser/BrowserState.cpp \
    browser/BrowserStateDiagram.cpp \
    browser/BrowserTransition.cpp \
    browser/BrowserUseCase.cpp \
    browser/BrowserUseCaseDiagram.cpp \
    browser/BrowserUseCaseView.cpp \
    browserfunctions/operationfuncs.cpp \
    CustomWidgets/EdgeMenuToolBar.cpp \
    CustomWidgets/GenericDelegate.cpp \
    CustomWidgets/MultiPurposeDragArea.cpp \
    CustomWidgets/quickeditcontrollersetup.cpp \
    CustomWidgets/quickedit.cpp \
    data/ActivityActionData.cpp \
    data/ActivityData.cpp \
    data/ActivityObjectData.cpp \
    data/ActivityPartitionData.cpp \
    data/ActualParamData.cpp \
    data/ArtifactData.cpp \
    data/AttributeData.cpp \
    data/AType.cpp \
    data/BasicData.cpp \
    data/ClassData.cpp \
    data/ClassInstanceData.cpp \
    data/ClassMemberData.cpp \
#   data/ComponentData.cpp \
    data/ExceptionData.cpp \
    data/ExpansionRegionData.cpp \
    data/ExtraMemberData.cpp \
    data/FlowData.cpp \
    data/FormalParamData.cpp \
    data/HaveKeyValueData.cpp \
    data/InfoData.cpp \
    data/KeyValueData.cpp \
    data/ObjectData.cpp \
    data/OperationData.cpp \
    data/PackageData.cpp \
    data/ParamData.cpp \
    data/ParameterData.cpp \
    data/ParameterSetData.cpp \
    data/PinData.cpp \
    data/PinParamData.cpp \
    data/PseudoStateData.cpp \
    data/RelationData.cpp \
    data/SimpleData.cpp \
    data/SimpleRelationData.cpp \
    data/StateActionData.cpp \
    data/StateData.cpp \
    data/TransitionData.cpp \
    data/UseCaseData.cpp \
    diagram/ActivityActionCanvas.cpp \
    diagram/ActivityCanvas.cpp \
    diagram/ActivityContainerCanvas.cpp \
    diagram/ActivityDiagramView.cpp \
    diagram/ActivityDiagramWindow.cpp \
    diagram/ActivityNodeCanvas.cpp \
    diagram/ActivityObjectCanvas.cpp \
    diagram/ActivityPartitionCanvas.cpp \
    diagram/ArrowCanvas.cpp \
    diagram/ArrowJunctionCanvas.cpp \
    diagram/ArrowPointCanvas.cpp \
    diagram/ArtifactCanvas.cpp \
    diagram/AssocContainCanvas.cpp \
    diagram/BrowserView.cpp \
    diagram/CdClassCanvas.cpp \
    diagram/ClassDiagramView.cpp \
    diagram/ClassDiagramWindow.cpp \
    diagram/ClassInstCanvas.cpp \
    diagram/CodClassInstCanvas.cpp \
    diagram/CodDirsCanvas.cpp \
    diagram/CodLinkCanvas.cpp \
    diagram/CodMsgSupport.cpp \
    diagram/CodObjCanvas.cpp \
    diagram/CodSelfLinkCanvas.cpp \
    diagram/ColDiagramView.cpp \
    diagram/ColDiagramWindow.cpp \
    diagram/ColMsg.cpp \
    diagram/ComponentCanvas.cpp \
    diagram/ComponentDiagramView.cpp \
    diagram/ComponentDiagramWindow.cpp \
    diagram/ConstraintCanvas.cpp \
    diagram/DeploymentDiagramView.cpp \
    diagram/DeploymentDiagramWindow.cpp \
    diagram/DeploymentNodeCanvas.cpp \
    diagram/DiagramCanvas.cpp \
    diagram/DiagramItem.cpp \
    diagram/DiagramView.cpp \
    diagram/DiagramWindow.cpp \
    diagram/ExpansionNodeCanvas.cpp \
    diagram/ExpansionRegionCanvas.cpp \
    diagram/FlowCanvas.cpp \
    diagram/FragmentCanvas.cpp \
    diagram/FragmentSeparatorCanvas.cpp \
    diagram/HubCanvas.cpp \
    diagram/IconCanvas.cpp \
    diagram/ImageCanvas.cpp \
    diagram/InfoCanvas.cpp \
    diagram/InterruptibleActivityRegionCanvas.cpp \
    diagram/LabelCanvas.cpp \
    diagram/NoteCanvas.cpp \
    diagram/ObjectDiagramView.cpp \
    diagram/ObjectDiagramWindow.cpp \
    diagram/ObjectLinkCanvas.cpp \
    diagram/OdClassInstCanvas.cpp \
    diagram/PackageCanvas.cpp \
    diagram/ParameterCanvas.cpp \
    diagram/ParameterSetCanvas.cpp \
    diagram/PinCanvas.cpp \
    diagram/PseudoStateCanvas.cpp \
    diagram/RelationCanvas.cpp \
    diagram/SdClassInstCanvas.cpp \
    diagram/SdContinuationCanvas.cpp \
    diagram/SdDurationCanvas.cpp \
    diagram/SdLifeLineCanvas.cpp \
    diagram/SdLostFoundMsgSupportCanvas.cpp \
    diagram/SdMsgBaseCanvas.cpp \
    diagram/SdMsgCanvas.cpp \
    diagram/SdObjCanvas.cpp \
    diagram/SdSelfMsgCanvas.cpp \
    diagram/SelectAreaCanvas.cpp \
    diagram/SeqDiagramView.cpp \
    diagram/SeqDiagramWindow.cpp \
    diagram/SimpleRelationCanvas.cpp \
    diagram/StateActionCanvas.cpp \
    diagram/StateCanvas.cpp \
    diagram/StateDiagramView.cpp \
    diagram/StateDiagramWindow.cpp \
    diagram/StereotypePropertiesCanvas.cpp \
    diagram/SubjectCanvas.cpp \
    diagram/TemplateCanvas.cpp \
    diagram/TextCanvas.cpp \
    diagram/TransitionCanvas.cpp \
    diagram/UcClassCanvas.cpp \
    diagram/UcUseCaseCanvas.cpp \
    diagram/UmlCanvas.cpp \
    diagram/UmlDesktop.cpp \
    diagram/UmlWindow.cpp \
    diagram/UseCaseDiagramView.cpp \
    diagram/UseCaseDiagramWindow.cpp \
    dialog/About.cpp \
    dialog/ActivityActionDialog.cpp \
    dialog/ActivityDialog.cpp \
    dialog/ActivityObjectDialog.cpp \
    dialog/ActivityPartitionDialog.cpp \
    dialog/AnnotationDialog.cpp \
    dialog/ArtifactDialog.cpp \
    dialog/AttributeDialog.cpp \
    dialog/BasicDialog.cpp \
    dialog/BodyDialog.cpp \
    dialog/BrowserSearchDialog.cpp \
#   dialog/CharSetDialog.cpp \
    dialog/ClassDialog.cpp \
    dialog/ClassInstanceDialog.cpp \
    dialog/ClassListDialog.cpp \
    dialog/ClassSettingsDialog.cpp \
    dialog/ClassViewDialog.cpp \
    dialog/CodAddMsgDialog.cpp \
    dialog/CodChangeMsgDialog.cpp \
    dialog/CodEditMsgDialog.cpp \
    dialog/ColMsgTable.cpp \
    dialog/ComboItem.cpp \
    dialog/ComponentDialog.cpp \
    dialog/ConstraintDialog.cpp \
    dialog/ContinuationDialog.cpp \
    dialog/DecoratorDialog.cpp \
    dialog/DialogTimer.cpp \
    dialog/DialogUtil.cpp \
    dialog/edgemenudialogbase.cpp \
    dialog/EdgeMenuDialog.cpp \
    dialog/edgemenudialogqt4.cpp \
    dialog/EnvDialog.cpp \
    dialog/ExpansionRegionDialog.cpp \
    dialog/ExtraMemberDialog.cpp \
    dialog/FlowDialog.cpp \
    dialog/FragmentDialog.cpp \
    dialog/GenerationSettingsBuiltinTable.cpp \
    dialog/GenerationSettingsDialog.cpp \
    dialog/GreetingsDialog.cpp \
    dialog/HelpDialog.cpp \
    dialog/HideShowDialog.cpp \
    dialog/ImageDialog.cpp \
    dialog/InstanceDialog.cpp \
    dialog/KeyValueTable.cpp \
#   dialog/MenuFont.cpp \
    dialog/MLEDialog.cpp \
    dialog/MLinesItem.cpp \
    dialog/MyInputDialog.cpp \
#   dialog/MyTabDialog.cpp \
    dialog/MyTable.cpp \
    dialog/ObjectLinkDialog.cpp \
    dialog/OperationDialog.cpp \
    dialog/OperationListDialog.cpp \
    dialog/PackageDialog.cpp \
    dialog/ParameterDialog.cpp \
    dialog/ParameterSetDialog.cpp \
    dialog/PinDialog.cpp \
    dialog/PseudoStateDialog.cpp \
    dialog/ReferenceDialog.cpp \
    dialog/RelatedElementsDialog.cpp \
    dialog/RelationDialog.cpp \
    dialog/RevSettingsDialog.cpp \
    dialog/SaveProgress.cpp \
    dialog/SdMsgDialog.cpp \
    dialog/SettingsDialog.cpp \
    dialog/ShortcutDialog.cpp \
    dialog/SimpleRelationDialog.cpp \
    dialog/SourceDialog.cpp \
    dialog/StateActionDialog.cpp \
    dialog/StateDialog.cpp \
    dialog/StateSpec.cpp \
    dialog/StereotypeDialog.cpp \
    dialog/StereotypesDialog.cpp \
    dialog/StringTable.cpp \
    dialog/tabdialog.cpp \
    dialog/tablewidgetitemdelegate.cpp \
    dialog/ToolDialog.cpp \
    dialog/TraceDialog.cpp \
    dialog/TransitionDialog.cpp \
    dialog/UseCaseDialog.cpp \
    dialog/VisibilityGroup.cpp \
    Factories/EdgeMenuFactory.cpp \
    Factories/EdgeToolBarCreation.cpp \
    Logging/QsDebugOutput.cpp \
    Logging/QsLog.cpp \
    Logging/QsLogDest.cpp \
    main.cpp \
    misc/ClipboardManager.cpp \
    misc/codec.cpp \
    misc/GenerateTypeId.cpp \
    misc/GenerationSettings.cpp \
    misc/Images.cpp \
    misc/Labeled.cpp \
    misc/mu.cpp \
    misc/myio.cpp \
    misc/mystr.cpp \
    misc/ProfiledStereotypes.cpp \
    misc/Settings.cpp \
    misc/Shortcut.cpp \
    misc/strutil.cpp \
    misc/translate.cpp \
    misc/UmlDrag.cpp \
    misc/UmlGlobal.cpp \
    tagmanagement/cpptagmanagement.cpp \
    tool/ToolCom.cpp \
    tool/Tool.cpp \
    ui/bbuttongroup.cpp \
    ui/catalogwidget.cpp \
    ui/constructorinitializerdialog.cpp \
    ui/gridbox.cpp \
    ui/hhbox.cpp \
    ui/menufactory.cpp \
    ui/operationwidgetcpp.cpp \
    ui/toolbarfactory.cpp \
    ui/vvbox.cpp \
    ui/widgetwithlayout.cpp \
    xpm/UmlPixmap.cpp

TARGET = douml
DEFINES += BooL=bool  FALSE=false TRUE=true
#DEFINES += _RUN_PLUGOUT_EXTERNAL_
#DEBUGCOM

DEFINES += __sil__

#The following line was inserted by qt3to4
QT += core gui network  widgets printsupport
#qt3support

UI_DIR = ui
DESTDIR = ../bin

CONFIG(release, debug|release) {
    DEFINES += NDEBUG
    MOC_DIR = $${DESTDIR}/moc_release/douml
    OBJECTS_DIR = $${DESTDIR}/obj_release/douml
}

CONFIG(debug, debug|release) {
    DEFINES += TRACE DEBUG DEBUG_DOUML
    MOC_DIR = $${DESTDIR}/moc_debug/douml
    OBJECTS_DIR = $${DESTDIR}/obj_debug/douml
}

QMAKE_CXXFLAGS += -std=gnu++11
mac:QMAKE_CXXFLAGS += -mmacosx-version-min=10.7 -stdlib=libc++
mac:LIBS += -lc++
LIBS += -L../bin -lUniversalModels -lz
RESOURCES += icons.qrc ../douml.qrc

INCLUDEPATH += $${PWD}


FORMS += \
    ui/operationwidgetcpp.ui \
    ui/constructorinitializerdialog.ui \
    ui/catalogwidget.ui \
    ui/quickedit.ui
win32:RC_ICONS += ../douml.ico
mac:ICON = ../douml.icns

TRANSLATIONS += translations/frFR.ts\
                translations/deDE.ts\
                translations/esES.ts\
                translations/ptBR.ts

.class Lcom/android/mms/ui/DirectCallTiltGuide$8;
.super Ljava/lang/Object;
.source "DirectCallTiltGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DirectCallTiltGuide;->motionDialogInitialOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DirectCallTiltGuide;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iput-object p2, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, settingIntent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v1, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v1, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v1, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v2, v2, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DirectCallingManager;->setPickupToCallOut(Landroid/content/Context;I)V

    .line 146
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v1, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mDirectCallingManager:Lcom/android/mms/util/DirectCallingManager;

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v2, v2, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->resume(Landroid/content/Context;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v1, v1, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    const-string v2, "MotionDialogOnOff"

    iget-object v3, p0, Lcom/android/mms/ui/DirectCallTiltGuide$8;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.class Lcom/android/mms/ui/DirectCallTiltGuide$4;
.super Ljava/lang/Object;
.source "DirectCallTiltGuide.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DirectCallTiltGuide;->motionDialogInitialOn()V
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
    .line 84
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$4;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iput-object p2, p0, Lcom/android/mms/ui/DirectCallTiltGuide$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide$4;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/ui/DirectCallTiltGuide;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide$4;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v0, v0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    const-string v1, "MotionDialogOnOff"

    iget-object v2, p0, Lcom/android/mms/ui/DirectCallTiltGuide$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

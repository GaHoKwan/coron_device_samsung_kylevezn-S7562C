.class Lcom/android/mms/ui/DirectCallTiltGuide$6;
.super Ljava/lang/Object;
.source "DirectCallTiltGuide.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DirectCallTiltGuide;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/mms/ui/DirectCallTiltGuide$6;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/DirectCallTiltGuide$6;->this$0:Lcom/android/mms/ui/DirectCallTiltGuide;

    iget-object v0, v0, Lcom/android/mms/ui/DirectCallTiltGuide;->mActivity:Landroid/app/Activity;

    const-string v1, "MotionDialogOnOff"

    invoke-static {v0, v1, p2}, Lcom/android/mms/ui/MessageUtils;->setCheckedOnOff(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 128
    return-void
.end method

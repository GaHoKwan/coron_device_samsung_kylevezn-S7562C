.class Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;
.super Landroid/os/Handler;
.source "OverturnTutorialIncallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 91
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "OVERTURN_TUTORIAL_SUCCESS message delivered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    const/16 v1, 0xa

    #setter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I

    goto :goto_0

    .line 107
    :cond_0
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;->this$0:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;

    #getter for: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I
    invoke-static {v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I

    move-result v1

    #calls: Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->access$200(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)V

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

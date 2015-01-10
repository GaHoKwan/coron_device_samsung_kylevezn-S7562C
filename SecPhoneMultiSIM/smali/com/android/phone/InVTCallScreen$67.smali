.class Lcom/android/phone/InVTCallScreen$67;
.super Landroid/os/Handler;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 14194
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 14197
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 14222
    :goto_0
    return-void

    .line 14199
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$18300(Lcom/android/phone/InVTCallScreen;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 14200
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14201
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$18300(Lcom/android/phone/InVTCallScreen;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14204
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$18400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 14205
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$18400(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14207
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$18308(Lcom/android/phone/InVTCallScreen;)I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 14201
    goto :goto_1

    .line 14209
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 14210
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14211
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e019c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14213
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$18302(Lcom/android/phone/InVTCallScreen;I)I

    goto :goto_0

    .line 14217
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$67;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$18500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14197
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

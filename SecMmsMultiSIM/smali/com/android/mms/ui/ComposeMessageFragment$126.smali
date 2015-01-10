.class Lcom/android/mms/ui/ComposeMessageFragment$126;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->RapidMakeToButtons(Ljava/lang/String;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 13437
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x42

    const/4 v1, 0x1

    .line 13439
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 13440
    sparse-switch p2, :sswitch_data_0

    .line 13467
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .end local p1
    :goto_1
    :pswitch_0
    :sswitch_0
    return v1

    .restart local p1
    :sswitch_1
    move-object v0, p1

    .line 13442
    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 13443
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    .line 13447
    .end local v0           #toButton:Lcom/android/mms/ui/ToButton;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnPreToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    if-ne p2, v2, :cond_1

    .line 13448
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 13450
    :cond_1
    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    const/16 v2, 0x11

    invoke-static {v2}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 13454
    .restart local p1
    :sswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusOnNextToButton()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x14

    if-ne p2, v2, :cond_2

    .line 13455
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$126;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 13456
    :cond_2
    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 13461
    .restart local p1
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 13462
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 13440
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x3e -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch

    .line 13462
    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

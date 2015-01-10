.class Lcom/android/mms/ui/ComposeMessageFragment$35;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onResume()V
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
    .line 3549
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3552
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$35;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    .line 3554
    .local v0, activity:Lcom/android/mms/ui/ConversationComposer;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_0

    .line 3556
    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 3558
    :cond_0
    return-void
.end method

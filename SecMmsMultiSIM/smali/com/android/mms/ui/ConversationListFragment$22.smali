.class Lcom/android/mms/ui/ConversationListFragment$22;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2959
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$22;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    .line 2963
    .local v0, activity:Lcom/android/mms/ui/ConversationComposer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    if-eqz v1, :cond_0

    .line 2966
    iget-object v1, v0, Lcom/android/mms/ui/ConversationComposer;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v1}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 2968
    :cond_0
    return-void
.end method

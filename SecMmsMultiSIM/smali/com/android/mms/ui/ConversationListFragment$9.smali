.class Lcom/android/mms/ui/ConversationListFragment$9;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onSaveCompleted()V
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
    .line 943
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$9;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 947
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$9;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsSaveMode:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$9;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    .line 949
    :cond_0
    return-void
.end method

.class Lcom/android/mms/ui/ConversationComposer$7;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 1869
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1871
    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onComposerSipUp"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$7;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1876
    return-void
.end method

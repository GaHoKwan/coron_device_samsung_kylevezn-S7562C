.class Lcom/android/mms/ui/ConversationListFragment$1;
.super Landroid/database/ContentObserver;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$1;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    .line 327
    const-string v0, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sWsomaCPObserver.onChange(),selfUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    .line 329
    sget-boolean v0, Lcom/android/mms/ui/ConversationListFragment;->isOmacpChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$1;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$1;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 332
    :cond_0
    return-void
.end method

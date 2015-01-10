.class Lcom/android/mms/ui/ConversationListFragment$15;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 1512
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$15;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1517
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$15;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    .line 1518
    return-void
.end method

.class Lcom/android/mms/ui/SpamMessageManager$6;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SpamMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->restoreSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/SpamMessageManager;->access$600(Lcom/android/mms/ui/SpamMessageManager;)V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->deleteSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/SpamMessageManager;->access$700(Lcom/android/mms/ui/SpamMessageManager;)V

    goto :goto_0
.end method

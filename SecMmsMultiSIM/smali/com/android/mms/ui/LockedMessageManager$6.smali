.class Lcom/android/mms/ui/LockedMessageManager$6;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/LockedMessageManager;->updateDeleteModeListActionBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/LockedMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/LockedMessageManager;->getCurrentListMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->unlockSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$600(Lcom/android/mms/ui/LockedMessageManager;)V

    .line 1307
    :goto_0
    return-void

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$6;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->deleteSelectedMessages()V
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$700(Lcom/android/mms/ui/LockedMessageManager;)V

    goto :goto_0
.end method

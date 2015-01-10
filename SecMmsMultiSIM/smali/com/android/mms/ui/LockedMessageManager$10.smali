.class Lcom/android/mms/ui/LockedMessageManager$10;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/LockedMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
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
    .line 1589
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$10;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/LockedMessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1591
    const-string v0, "Mms/LockedMsgStoreActivity"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    iget-object v0, p0, Lcom/android/mms/ui/LockedMessageManager$10;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #calls: Lcom/android/mms/ui/LockedMessageManager;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/LockedMessageManager;->access$1400(Lcom/android/mms/ui/LockedMessageManager;)V

    .line 1593
    return-void
.end method

.class Lcom/android/mms/ui/BoxListViewActivity$4;
.super Ljava/lang/Object;
.source "BoxListViewActivity.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/mms/ui/BoxListViewActivity$4;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 2

    .prologue
    .line 1271
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onViewerClose"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$4;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    #getter for: Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z
    invoke-static {v0}, Lcom/android/mms/ui/BoxListViewActivity;->access$500(Lcom/android/mms/ui/BoxListViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity$4;->this$0:Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1289
    :cond_0
    return-void
.end method

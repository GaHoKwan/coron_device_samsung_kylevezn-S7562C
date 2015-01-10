.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V

    .line 402
    const-string v0, "CallLogFragment"

    const-string v1, "refreshData(false)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

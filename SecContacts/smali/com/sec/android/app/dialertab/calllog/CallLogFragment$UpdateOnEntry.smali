.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateOnEntry"
.end annotation


# instance fields
.field public mResetMissed:Z

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)V
    .locals 0
    .parameter
    .parameter "resetMissed"

    .prologue
    .line 2537
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2538
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    .line 2539
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2543
    const-wide/16 v0, 0x5dc

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2544
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UpdateOnEntry;->mResetMissed:Z

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;ZZ)V

    .line 2545
    return-void
.end method

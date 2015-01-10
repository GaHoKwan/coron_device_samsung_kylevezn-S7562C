.class Lcom/android/mms/transaction/TransactionService2$1;
.super Landroid/os/Handler;
.source "TransactionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService2;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService2;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 224
    new-instance v0, Lcom/android/mms/transaction/TransactionService2$1$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService2$1$1;-><init>(Lcom/android/mms/transaction/TransactionService2$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

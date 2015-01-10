.class Lcom/android/mms/spam/SetupSpamKeywordList$7;
.super Ljava/lang/Object;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList$7;->this$0:Lcom/android/mms/spam/SetupSpamKeywordList;

    iget-object v0, v0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$7$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$7$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList$7;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    return-void
.end method

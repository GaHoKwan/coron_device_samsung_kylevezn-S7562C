.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 1513
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1515
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1516
    return-void
.end method

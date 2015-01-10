.class Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$1;
.super Ljava/lang/Object;
.source "MergeWithSamsungDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->createAccountSelectionDialog()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V

    .line 78
    return-void
.end method

.class Lcom/android/mms/ui/SpamMessageManager$4;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
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
    .line 806
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$4;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 809
    return-void
.end method

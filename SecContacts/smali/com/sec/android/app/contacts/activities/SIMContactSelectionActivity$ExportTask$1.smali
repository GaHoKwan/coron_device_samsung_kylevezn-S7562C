.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field final synthetic val$target:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->val$target:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    .line 1626
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1627
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$1002(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z

    .line 1628
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1629
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask$1;->val$target:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->onBackPressed()V

    .line 1635
    :cond_0
    :goto_0
    return v0

    .line 1631
    :cond_1
    const/16 v1, 0x52

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 1635
    const/4 v0, 0x0

    goto :goto_0
.end method

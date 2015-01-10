.class Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;
.super Ljava/lang/Object;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->exportAfterWarningDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v4, v4, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V

    #setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    move-result-object v0

    #setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z
    invoke-static {v0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->access$702(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Z)Z

    .line 1079
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1080
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener$1;->this$1:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->bIsSim1:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;->access$702(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;Z)Z

    goto :goto_0
.end method

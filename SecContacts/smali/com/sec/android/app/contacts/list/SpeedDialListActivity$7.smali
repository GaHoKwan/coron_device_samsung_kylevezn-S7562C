.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->doShowPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$dataAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->val$dataAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;

    iput-object p3, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1819
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1820
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->val$dataAdapter:Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$DataBrowseListAdapter;->getItemId(I)J

    move-result-wide v1

    #calls: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$400(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;J)V

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->val$c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$7;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1824
    :cond_0
    return-void
.end method

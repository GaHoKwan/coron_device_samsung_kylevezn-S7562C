.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1178
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #calls: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->getOnePhoneNumberId()J
    invoke-static {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$300(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)J

    move-result-wide v0

    .line 1180
    .local v0, dataId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1181
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->doShowPicker()V

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$6;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    #calls: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->assignSpeedDial(J)V
    invoke-static {v2, v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$400(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;J)V

    goto :goto_0
.end method

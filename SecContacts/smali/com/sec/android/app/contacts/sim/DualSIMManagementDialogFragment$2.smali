.class Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;
.super Ljava/lang/Object;
.source "DualSIMManagementDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, dismissDialog:Z
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 135
    .local v1, resId:I
    packed-switch v1, :pswitch_data_0

    .line 151
    const/4 v0, 0x1

    .line 152
    const-string v2, "DualSIMManagementDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    :cond_0
    return-void

    .line 139
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->selectSimForDS(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const-string v2, "DualSIMManagementDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnClick  No matching case # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d03cb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/samsung/mms/location/LocationMapActivity$5;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity;->displayLoadErrorDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    iput-object p2, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1225
    new-instance v1, Lcom/samsung/mms/location/LocationMapActivity$5$1;

    invoke-direct {v1, p0}, Lcom/samsung/mms/location/LocationMapActivity$5$1;-><init>(Lcom/samsung/mms/location/LocationMapActivity$5;)V

    .line 1234
    .local v1, finishListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0a03fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    const v4, 0x7f0a03fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    const v4, 0x7f0a03fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1239
    return-void
.end method

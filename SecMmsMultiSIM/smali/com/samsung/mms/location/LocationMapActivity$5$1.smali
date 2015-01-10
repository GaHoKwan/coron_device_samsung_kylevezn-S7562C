.class Lcom/samsung/mms/location/LocationMapActivity$5$1;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/LocationMapActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/mms/location/LocationMapActivity$5;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$5$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/samsung/mms/location/LocationMapActivity$5$1;->this$1:Lcom/samsung/mms/location/LocationMapActivity$5;

    iget-object v0, v0, Lcom/samsung/mms/location/LocationMapActivity$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1231
    return-void
.end method

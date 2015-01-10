.class Lcom/android/mms/ui/SelectMapActivity$5$1;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start update location"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v2, v2, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$700(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$602(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5$1;->this$1:Lcom/android/mms/ui/SelectMapActivity$5;

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSelectMapHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

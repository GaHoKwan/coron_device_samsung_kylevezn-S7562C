.class Lcom/android/mms/ui/SelectMapActivity$5;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #calls: Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    #setter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$302(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SelectMapActivity$5$1;-><init>(Lcom/android/mms/ui/SelectMapActivity$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$5;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    #getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "search point is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

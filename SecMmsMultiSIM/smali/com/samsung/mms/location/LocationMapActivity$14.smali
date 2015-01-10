.class Lcom/samsung/mms/location/LocationMapActivity$14;
.super Ljava/lang/Object;
.source "LocationMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/LocationMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/LocationMapActivity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/LocationMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 2113
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->recPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$1200(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceDBAdapter;->getAllPlaces()Ljava/util/Vector;

    move-result-object v1

    .line 2115
    .local v1, recentPlaces:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2118
    new-instance v0, Lcom/samsung/mms/location/LocationListAdapter;

    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->favPlaceDBAdapter:Lcom/samsung/mms/location/PlaceDBAdapter;
    invoke-static {v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$400(Lcom/samsung/mms/location/LocationMapActivity;)Lcom/samsung/mms/location/PlaceDBAdapter;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/mms/location/LocationListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/mms/location/PlaceDBAdapter;Ljava/util/Vector;Z)V

    .line 2120
    .local v0, locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2121
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v3, v4, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemClickListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2122
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->locationMenuList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3100(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;

    iget-object v4, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v3, v4, v1}, Lcom/samsung/mms/location/LocationMapActivity$LocationItemContextMenuListener;-><init>(Lcom/samsung/mms/location/LocationMapActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 2123
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const/4 v3, 0x3

    #calls: Lcom/samsung/mms/location/LocationMapActivity;->adjustViewsBasedOnFocus(I)V
    invoke-static {v2, v3}, Lcom/samsung/mms/location/LocationMapActivity;->access$1400(Lcom/samsung/mms/location/LocationMapActivity;I)V

    .line 2125
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->btnRecent:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3200(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f02009b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2126
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    #getter for: Lcom/samsung/mms/location/LocationMapActivity;->btnFavorite:Landroid/widget/Button;
    invoke-static {v2}, Lcom/samsung/mms/location/LocationMapActivity;->access$3300(Lcom/samsung/mms/location/LocationMapActivity;)Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0200f1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2132
    .end local v0           #locationListAdapter:Lcom/samsung/mms/location/LocationListAdapter;
    :goto_0
    return-void

    .line 2129
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/LocationMapActivity$14;->this$0:Lcom/samsung/mms/location/LocationMapActivity;

    const v3, 0x7f0a03f0

    invoke-static {v2, v3, v4}, Lcom/samsung/mms/location/LocationUtils;->showToastOnUIThread(Landroid/app/Activity;II)V

    .line 2130
    const-string v2, "LocationMapActivity"

    const-string v3, "recentClickListener:onClick() - no recent places in database"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

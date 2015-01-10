.class Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;
.super Ljava/lang/Object;
.source "FavoritePlacesList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/FavoritePlacesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationItemClickListener"
.end annotation


# instance fields
.field private mPlaces:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/mms/location/FavoritePlacesList;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/FavoritePlacesList;Ljava/util/Vector;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/nbi/map/data/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, places:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/nbi/map/data/Place;>;"
    iput-object p1, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    .line 158
    iput-object p2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    .line 159
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-virtual {v2}, Lcom/samsung/mms/location/FavoritePlacesList;->showNoInternetDialog()V

    .line 182
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->mPlaces:Ljava/util/Vector;

    invoke-virtual {v2, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nbi/map/data/Place;

    .line 172
    .local v1, selectedPlace:Lcom/nbi/map/data/Place;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_selected_place"

    invoke-static {v1}, Lcom/samsung/mms/location/PlaceUtils;->createSDKPlaceFromNBI(Lcom/nbi/map/data/Place;)Lcom/samsung/mms/location/Place;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/mms/location/Place;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object v2, p0, Lcom/samsung/mms/location/FavoritePlacesList$LocationItemClickListener;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.class Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;
.super Ljava/lang/Object;
.source "RecentPlacesList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/mms/location/RecentPlacesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationContextMenuClickListener"
.end annotation


# instance fields
.field public final CONTEXT_MENU_CALL_PLACE:I

.field public final CONTEXT_MENU_NAVIGATE:I

.field private final mPlace:Lcom/nbi/map/data/Place;

.field final synthetic this$0:Lcom/samsung/mms/location/RecentPlacesList;


# direct methods
.method public constructor <init>(Lcom/samsung/mms/location/RecentPlacesList;Lcom/nbi/map/data/Place;)V
    .locals 1
    .parameter
    .parameter "place"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->CONTEXT_MENU_CALL_PLACE:I

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->CONTEXT_MENU_NAVIGATE:I

    .line 231
    iput-object p2, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->mPlace:Lcom/nbi/map/data/Place;

    .line 232
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 237
    new-instance v2, Lcom/samsung/mms/location/PlaceFormatter;

    iget-object v4, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->mPlace:Lcom/nbi/map/data/Place;

    invoke-direct {v2, v4}, Lcom/samsung/mms/location/PlaceFormatter;-><init>(Lcom/nbi/map/data/Place;)V

    .line 239
    .local v2, placeFormatter:Lcom/samsung/mms/location/PlaceFormatter;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 264
    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    .line 243
    :pswitch_0
    invoke-virtual {v2}, Lcom/samsung/mms/location/PlaceFormatter;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 248
    .local v0, dialIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    .end local v0           #dialIntent:Landroid/content/Intent;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/mms/location/LocationUtils;->haveInternet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    iget-object v4, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-virtual {v4}, Lcom/samsung/mms/location/RecentPlacesList;->showNoInternetDialog()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    iget-object v5, p0, Lcom/samsung/mms/location/RecentPlacesList$LocationContextMenuClickListener;->mPlace:Lcom/nbi/map/data/Place;

    invoke-static {v4, v5}, Lcom/samsung/mms/location/LocationUtils;->startVzwNavigate(Landroid/app/Activity;Lcom/nbi/map/data/Place;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

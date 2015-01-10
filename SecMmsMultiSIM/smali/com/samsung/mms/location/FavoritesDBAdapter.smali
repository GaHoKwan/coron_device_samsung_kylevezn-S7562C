.class public Lcom/samsung/mms/location/FavoritesDBAdapter;
.super Lcom/samsung/mms/location/PlaceDBAdapter;
.source "FavoritesDBAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/mms/location/PlaceDBAdapter;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected getOrdering()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "favorites"

    return-object v0
.end method

.method protected getTableRowLimit()J
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method protected onLimitReached()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/samsung/mms/location/PlaceDBAdapter;->context:Landroid/content/Context;

    const-string v1, "Too many favorites. Remove some first."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    return v2
.end method

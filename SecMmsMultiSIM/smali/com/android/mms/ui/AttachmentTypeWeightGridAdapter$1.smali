.class final Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$1;
.super Ljava/lang/Object;
.source "AttachmentTypeWeightGridAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->getWeight()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;->getWeight()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    check-cast p1, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;

    .end local p1
    check-cast p2, Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter$1;->compare(Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;Lcom/android/mms/ui/IconWeightGridAdapter$IconWeightGridItem;)I

    move-result v0

    return v0
.end method
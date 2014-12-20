.class Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;
.super Ljava/lang/Object;
.source "TwListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoTag"
.end annotation


# instance fields
.field protected mChildrenNumberTotal:I

.field protected mChildrenVisibilityBitsGone:J

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mHeightSpec:I

.field protected mWidthSpec:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 4062
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4063
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 4064
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 4066
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    .line 4067
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 4069
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mWidthSpec:I

    .line 4070
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwListView$ItemInfoTag;->mHeightSpec:I

    .line 4071
    return-void
.end method

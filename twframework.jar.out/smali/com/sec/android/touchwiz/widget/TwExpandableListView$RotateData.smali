.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotateData"
.end annotation


# instance fields
.field axisOfRotation:I

.field duration:I

.field mDepthZ:F

.field mFromDegrees:F

.field mToDegrees:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3386
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mFromDegrees:F

    .line 3387
    const/high16 v0, -0x3d4c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mToDegrees:F

    .line 3388
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->mDepthZ:F

    .line 3389
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->duration:I

    .line 3390
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$RotateData;->axisOfRotation:I

    .line 3391
    return-void
.end method

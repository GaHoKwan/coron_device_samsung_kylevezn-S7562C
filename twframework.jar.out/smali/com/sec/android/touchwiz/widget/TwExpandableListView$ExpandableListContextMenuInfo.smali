.class public Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .parameter "targetView"
    .parameter "packedPosition"
    .parameter "id"

    .prologue
    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1318
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1319
    iput-wide p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1320
    iput-wide p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1321
    return-void
.end method

.class public Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;


# direct methods
.method protected constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 1768
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1771
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 1773
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1774
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1778
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    #calls: Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;ZZ)V

    .line 1780
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$MyDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 1781
    return-void
.end method

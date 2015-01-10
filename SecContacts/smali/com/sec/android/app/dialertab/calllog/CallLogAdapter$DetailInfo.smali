.class public Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 292
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->getDetailUri(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    move-result-object v0

    return-object v0
.end method

.method private getDetailUri(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    .locals 9
    .parameter "adapter"
    .parameter "position"
    .parameter "id"
    .parameter "groupSize"
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    .line 295
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {v4, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    .line 305
    .local v4, loadDetailInfoData:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;
    iput-object p6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->phoneNumber:Ljava/lang/String;

    .line 314
    iput p2, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->pos:I

    .line 315
    if-eqz p2, :cond_0

    .line 316
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$000()I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->prevPos:I

    .line 318
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 319
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 320
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 323
    new-array v1, p5, [J

    .line 324
    .local v1, ids:[J
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v2, idsStr:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, p5, :cond_2

    .line 327
    if-nez v3, :cond_1

    .line 328
    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :goto_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 335
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :cond_1
    const-string v6, " OR _id= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 337
    :cond_2
    iput-object v1, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->ids:[J

    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;->idsStr:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$200()I

    move-result v6

    if-ne v6, p2, :cond_3

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$300()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 341
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfo;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->selectDetail(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$DetailInfoData;)V

    .line 342
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$302(Z)Z

    .line 345
    :cond_3
    invoke-static {p2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$002(I)I

    .line 347
    return-object v4
.end method

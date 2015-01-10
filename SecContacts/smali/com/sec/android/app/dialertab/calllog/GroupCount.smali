.class public Lcom/sec/android/app/dialertab/calllog/GroupCount;
.super Ljava/lang/Object;
.source "GroupCount.java"


# instance fields
.field private groupCount:I

.field private groupDates:[J

.field private groupIDs:[I

.field private headerID:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "ID"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 25
    return-void
.end method

.method constructor <init>(I[II)V
    .locals 0
    .parameter "ID"
    .parameter "IDs"
    .parameter "count"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    .line 11
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    .line 12
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 46
    if-nez p1, :cond_1

    .line 52
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 49
    .restart local p1
    :cond_1
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getHeaderID()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    if-ne v1, v2, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    return v0
.end method

.method public getGroupDates()[J
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupDates:[J

    return-object v0
.end method

.method public getGroupIDs()[I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    return-object v0
.end method

.method public getHeaderID()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    return v0
.end method

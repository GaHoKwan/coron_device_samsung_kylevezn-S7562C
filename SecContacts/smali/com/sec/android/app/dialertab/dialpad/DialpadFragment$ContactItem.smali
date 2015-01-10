.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private colorEnd:I

.field private colorStart:I

.field private id:I

.field private mActioncode:Ljava/lang/String;

.field private mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

.field private mContactId:I

.field private mDisplayWeight:I

.field private mIsQuickCommand:Z

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone_type:I

.field private selection:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "mContactId"
    .parameter "type"

    .prologue
    .line 5380
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5381
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 5382
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 5383
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 5384
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 5385
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 5386
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "mContactId"
    .parameter "type"
    .parameter "isQuickCommand"

    .prologue
    .line 5388
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5389
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 5390
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 5391
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 5392
    iput p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 5393
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 5394
    iput-boolean p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsQuickCommand:Z

    .line 5395
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "actioncode"
    .parameter "phone_type"
    .parameter "type"

    .prologue
    .line 5369
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5370
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    .line 5371
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    .line 5372
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    .line 5373
    iput-object p5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mActioncode:Ljava/lang/String;

    .line 5374
    iput p6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    .line 5375
    iput p7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    .line 5376
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    .line 5377
    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 5355
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsQuickCommand:Z

    return v0
.end method


# virtual methods
.method public getActionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5409
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mActioncode:Ljava/lang/String;

    return-object v0
.end method

.method public getColorEnd()I
    .locals 1

    .prologue
    .line 5457
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorEnd:I

    return v0
.end method

.method public getColorStart()I
    .locals 1

    .prologue
    .line 5454
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorStart:I

    return v0
.end method

.method public getColorStringGetter()Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;
    .locals 1

    .prologue
    .line 5437
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    return-object v0
.end method

.method public getContactID()I
    .locals 1

    .prologue
    .line 5412
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mContactId:I

    return v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5402
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIsQuickCommand()Z
    .locals 1

    .prologue
    .line 5421
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mIsQuickCommand:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5406
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 5415
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->phone_type:I

    return v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 5398
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->id:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 5418
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->type:I

    return v0
.end method

.method public setColorEnd(I)V
    .locals 0
    .parameter "colorEnd"

    .prologue
    .line 5451
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorEnd:I

    .line 5452
    return-void
.end method

.method public setColorStart(I)V
    .locals 0
    .parameter "colorStart"

    .prologue
    .line 5448
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->colorStart:I

    .line 5449
    return-void
.end method

.method public setColorStringGetter(Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;)V
    .locals 1
    .parameter "colorStringGetter"

    .prologue
    .line 5428
    if-eqz p1, :cond_0

    .line 5429
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    .line 5430
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mColorStringGetter:Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/ColorStringGetter;->getWeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setDisplayWeight(I)V

    .line 5435
    :goto_0
    return-void

    .line 5433
    :cond_0
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->setDisplayWeight(I)V

    goto :goto_0
.end method

.method public setDisplayWeight(I)V
    .locals 0
    .parameter "nWeight"

    .prologue
    .line 5440
    iput p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->mDisplayWeight:I

    .line 5441
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .parameter "selection"

    .prologue
    .line 5460
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->selection:Ljava/lang/String;

    .line 5461
    return-void
.end method

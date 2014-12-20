.class Landroid/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1941
    iput-object p1, p0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method private hardKeyConvert(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"

    .prologue
    const/4 v5, 0x1

    .line 2028
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2033
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/widget/NumberPicker;->access$800()[C

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 2034
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "GT-B7810"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v5, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "GT-B5330"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v5, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "GT-B5330L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "GT-B5330B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2036
    :cond_0
    if-eqz v0, :cond_2

    const-string v3, "PHE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "XEC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2037
    :cond_1
    invoke-static {}, Landroid/widget/NumberPicker;->access$1200()[C

    move-result-object v3

    aget-char v3, v3, v1

    invoke-static {}, Landroid/widget/NumberPicker;->access$800()[C

    move-result-object v4

    aget-char v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 2033
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2039
    :cond_2
    invoke-static {}, Landroid/widget/NumberPicker;->access$1300()[C

    move-result-object v3

    aget-char v3, v3, v1

    invoke-static {}, Landroid/widget/NumberPicker;->access$800()[C

    move-result-object v4

    aget-char v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2042
    :cond_3
    invoke-static {}, Landroid/widget/NumberPicker;->access$1300()[C

    move-result-object v3

    aget-char v3, v3, v1

    invoke-static {}, Landroid/widget/NumberPicker;->access$800()[C

    move-result-object v4

    aget-char v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2047
    :cond_4
    return-object v2
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 17
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 1961
    .local v10, config:Landroid/content/res/Configuration;
    iget v2, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inputType=month_edittext"

    if-eq v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1963
    invoke-direct/range {p0 .. p1}, Landroid/widget/NumberPicker$InputTextFilter;->hardKeyConvert(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1967
    .local v3, keyConverted:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1968
    invoke-super/range {v2 .. v8}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1969
    .local v11, filtered:Ljava/lang/CharSequence;
    if-nez v11, :cond_0

    .line 1970
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v3, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1973
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v4, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v4

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1976
    .local v14, result:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v14

    .line 2021
    :goto_1
    return-object v2

    .line 1965
    .end local v3           #keyConverted:Ljava/lang/CharSequence;
    .end local v11           #filtered:Ljava/lang/CharSequence;
    .end local v14           #result:Ljava/lang/String;
    :cond_1
    move-object/from16 v3, p1

    .restart local v3       #keyConverted:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1979
    .restart local v11       #filtered:Ljava/lang/CharSequence;
    .restart local v14       #result:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v2, v14}, Landroid/widget/NumberPicker;->access$1000(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v16

    .line 1986
    .local v16, val:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mMaxValue:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1100(Landroid/widget/NumberPicker;)I

    move-result v2

    move/from16 v0, v16

    if-le v0, v2, :cond_3

    .line 1987
    const-string v2, ""

    goto :goto_1

    :cond_3
    move-object v2, v11

    .line 1989
    goto :goto_1

    .line 2011
    .end local v11           #filtered:Ljava/lang/CharSequence;
    .end local v14           #result:Ljava/lang/String;
    .end local v16           #val:I
    :cond_4
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2012
    .restart local v11       #filtered:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v4, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v4

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2014
    .restart local v14       #result:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 2015
    .local v15, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/NumberPicker$InputTextFilter;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$900(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    .local v9, arr$:[Ljava/lang/String;
    array-length v13, v9

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_6

    aget-object v16, v9, v12

    .line 2016
    .local v16, val:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 2017
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v11

    .line 2018
    goto :goto_1

    .line 2015
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2021
    .end local v16           #val:Ljava/lang/String;
    :cond_6
    const-string v2, ""

    goto :goto_1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 1951
    invoke-static {}, Landroid/widget/NumberPicker;->access$800()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1946
    const/4 v0, 0x1

    return v0
.end method

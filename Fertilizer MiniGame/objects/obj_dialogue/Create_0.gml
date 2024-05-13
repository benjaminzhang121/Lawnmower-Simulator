//creates dialogue for the end scene (persist? Whatever that setting. After certain dialogue, change backgrounds)
text[0] = "Did you manage to finish mowing the lawn?";
text[1] = "Took you a while... didn't it?";
text[2] = "Don't you wish there was some way to speed it up?";
text[3] = "Imagine if there was a boost... something like fertilizer!";
text[4] = "Fertilizers are typically used to speed up plant growth in order to meet demands...";
text[5] = "It's similar to how a boost could have been used to help you finish before the timer ran out..."
text[6] = "Unfortunately, these fertilizers aren't perfect...";
text[7] = "Fertilizers can be categorized as organic or chemical based...";
text[8] = "Today we'll focus on the chemical fertilizers, which are considered to be harmful for the environment..."
text[9] = "These kinds of fertilizers are made in laboratories by combining inorganic materials such as nitrogen, phosphorus, and potassium (NPK)...";
text[10] = "Although they are cheap to produce, quick to take effect, and allow an increase in both crop quantity and quality...";
text[11] = "There are many setbacks... For example...";
text[12] = "Chemical fertilizers can decompose the soil, causing it to be virtually unusable for future crops...";
text[13] = "In addition, the chemical runoff can be washed into bodies of waters or ecosystems...";
text[14] = "This causes severe contamination, rendering the region to be uninhabitable...";
text[15] = "Furthermore, the chemicals are a large contributor to the increasing quantity of greenhouse gasses...";
text[16] = "In addition to global warming, these effects can even cause issues like cancer growth and methemoglobinemia, also known as Blue Baby Syndrome...";
text[17] = "By feeding babies with formula mixed with contaminated water, the baby can turn blue, leading to coma or death...";
text[18] = "Did you see a cute dog running by?... even pets can also be affected...";
text[19] = "All this sounds pretty bad right?";
text[20] = "At least it puts food on the table...";
text[21] = "At least it increases profits in the short run...";
text[22] = "At least fertilizer is a cheap and effective boost...";
text[23] = "But is it really worth all the damage in the future?";
text[24] = "Take the time to learn more at www.ars.usda.gov.";
text[25] = "Or you can check out this youtube video: https://www.youtube.com/watch?v=yYPqIewPZIY";
text[26] = "If you can't click the link, search 'Fertilizer Awareness PSA - English.'";
text[27] = "#SpreadFertilizerAwareness";
text[28] = "#FertilizerUsageControlKorp";

//formats text
text_current = 0;
text_last = 28; //fill in with last number of text
text_width = 1000;
text_x = 160;
text_y = room_height - (room_height / 4);

//sets speed of typewriter format
char_current = 1;
char_speed = .35; //adjust if needed

//wraps text using the wrap text sequence
text[text_current] = string_wrap(text[text_current], text_width);


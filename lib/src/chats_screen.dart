import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 350,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Chats",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.edit_note_rounded,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    enabledBorder: InputBorder.none,
                    hintText: "Search",
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://i.ytimg.com/vi/7utfe9dVAMk/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLAbBXokv4V0bRzUvE_ilT8dszt5-A"),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dipen Maharjan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "You: hello how are yo doing....",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.ytimg.com/vi/1w7OgIMMRc4/hqdefault.jpg?sqp=-oaymwEbCKgBEF5IVfKriqkDDggBFQAAiEIYAXABwAEG&rs=AOn4CLDDXlO67WvBVnqTFoxUIam3lgRP7A"),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Dipen Maharjan",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.call,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.video_call_rounded,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_horiz,
                              size: 30,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: index.isEven
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 20,
                              ),
                              decoration: BoxDecoration(
                                color: index.isEven
                                    ? Colors.grey.shade200
                                    : Colors.blueAccent,
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(10),
                                  topRight: const Radius.circular(10),
                                  bottomLeft:
                                      Radius.circular(index.isEven ? 0 : 10),
                                  bottomRight:
                                      Radius.circular(index.isEven ? 10 : 0),
                                ),
                              ),
                              child: Text(
                                "Hello how are yo doing?",
                                style: TextStyle(
                                  color: index.isEven
                                      ? Colors.black
                                      : Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            enabledBorder: InputBorder.none,
                            hintText: "Type a message .....",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.send),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

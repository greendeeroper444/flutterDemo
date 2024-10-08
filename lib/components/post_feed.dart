import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostFeed extends StatelessWidget {
  const PostFeed({super.key});

  @override
  Widget build(BuildContext context) {

    final posts = [
      {
        'name': 'Greendee Roper B. Panogalon',
        'post': 'Sir, gibuhatan nakog component files imong code para han ay ug para diko malibog',
        'timePosted': '1 hour ago',
        'imagePost': 'assets/img.png',
        'react': '5 reacts',
        'comment': '5 comments',
        'share': '2 shares',
      },
      {
        'name': 'Greendee Roper B. Panogalon',
        'post': 'Happy coding #flutter',
        'timePosted': '1 day ago',
        'imagePost': 'assets/img.png',
        'react': '2 reacts',
        'comment': '5 comments',
        'share': '1 share',
      }
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Posts',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        ...posts.map((post) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(1),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/myprofile.jpg'),
                        ),
                      ),
                    ),
                    title: Text(post['name']!),
                    subtitle: Text(post['timePosted']!),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    post['post']!,
                    style: const TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 10),

                  Image.asset(post['imagePost']!, fit: BoxFit.cover),

                  const SizedBox(height: 10),

                  //top
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          SvgPicture.string(
                            '''
                              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48"><defs><style>.cls-2{fill:#273941}.cls-4{fill:#f6fafd}.cls-7{fill:#141e21}</style></defs><g id="_05-haha" data-name="05-haha"><circle cx="24" cy="24" r="23" style="fill:#ffce52"/><path class="cls-2" d="M7.37 29h33.26a12.861 12.861 0 0 1-4.64 6.93C35.87 33.77 30.01 33 24 33c-6.69 0-11.89.77-11.99 2.93A12.861 12.861 0 0 1 7.37 29z"/><path d="M35.99 35.93c-.19.15-.39.3-.59.45a19.76 19.76 0 0 1-22.8 0c-.2-.15-.4-.3-.59-.45.1-2.16 5.3-2.93 11.99-2.93 6.01 0 11.87.77 11.99 2.93z" style="fill:#ae2d4c"/><path class="cls-4" d="M41 26a12.085 12.085 0 0 1-.37 3H7.37A12.085 12.085 0 0 1 7 26c0-1.11 7.6-2 17-2s17 .89 17 2z"/><path class="cls-2" d="M37.553 19.9C35.764 19 33.717 19 30 19a1 1 0 0 1-1-1c0-2.265 3.568-5 8-5v2a7.807 7.807 0 0 0-5.419 2c3.058.018 4.963.151 6.866 1.1zM10.447 19.9l-.894-1.79c1.9-.951 3.808-1.084 6.866-1.1A7.807 7.807 0 0 0 11 15v-2c4.432 0 8 2.735 8 5a1 1 0 0 1-1 1c-3.717 0-5.764 0-7.553.9z"/><path d="M24 4c12.15 0 22 8.507 22 19h.975a23 23 0 0 0-45.95 0H2C2 12.507 11.85 4 24 4z" style="fill:#ffe369"/><path d="M46 23c0 10.493-9.85 19-22 19S2 33.493 2 23h-.975c-.014.332-.025.665-.025 1a23 23 0 0 0 46 0c0-.335-.011-.668-.025-1z" style="fill:#ffb32b"/><ellipse class="cls-4" cx="37" cy="9" rx=".825" ry="1.148" transform="rotate(-45.02 37 9)"/><ellipse class="cls-4" cx="30.746" cy="4.5" rx=".413" ry=".574" transform="rotate(-45.02 30.745 4.5)"/><ellipse class="cls-4" cx="34" cy="7" rx="1.65" ry="2.297" transform="rotate(-45.02 34 7)"/><path class="cls-7" d="M12.933 34.6c-.109-.075-.226-.141-.333-.219-.2-.15-.4-.3-.59-.45A13.4 13.4 0 0 1 8.07 29h-.7a12.861 12.861 0 0 0 4.64 6.93 1.72 1.72 0 0 1 .923-1.33zM35.99 33.93c-.19.15-.39.3-.59.45-.123.089-.257.166-.383.252a1.718 1.718 0 0 1 .973 1.3A12.861 12.861 0 0 0 40.63 29h-.7a13.4 13.4 0 0 1-3.94 4.93z"/><path d="M35.017 34.632A20.117 20.117 0 0 1 24 38a20.105 20.105 0 0 1-11.067-3.4 1.72 1.72 0 0 0-.923 1.331c.19.15.39.3.59.45a19.76 19.76 0 0 0 22.8 0c.2-.15.4-.3.59-.45a1.718 1.718 0 0 0-.973-1.299z" style="fill:#8a293d"/><path d="M40.865 27.758A12.375 12.375 0 0 0 41 26c0-1.11-7.6-2-17-2s-17 .89-17 2a12.387 12.387 0 0 0 .135 1.758C8.148 26.764 15.3 26 24 26s15.852.764 16.865 1.758z" style="fill:#ededed"/></g></svg>
                            ''',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 1,),
                          SvgPicture.string(
                            '''
                              <svg viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M7 0L5 5V14H14L16 8V5H10V2C10 0.895431 9.10457 0 8 0H7Z" fill="#1868bf"></path> <path d="M3 5H0V14H3V5Z" fill="#1868bf"></path> </g></svg>
                            ''',
                            width: 20,
                            height: 20,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            post['react']!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                            post['comment']!,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            post['share']!,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  //bottom
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/like-icon.svg',
                            width: 20,
                            height: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Like',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/comment-icon.svg',
                            width: 20,
                            height: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Comment',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/link-icon.svg',
                            width: 20,
                            height: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Copy',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/share-icon.svg',
                            width: 20,
                            height: 20,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Share',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
